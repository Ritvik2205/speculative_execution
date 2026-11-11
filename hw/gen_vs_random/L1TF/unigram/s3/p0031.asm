.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
add bl, 113 # instrumentation
setbe al
inc edx
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 2
add dil, cl
xchg bl, dl
xor dx, cx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 46
jmp .bb_0.1
.bb_0.1:
and al, -68
xor rdi, -80
add al, 39 # instrumentation
cmovnb ax, dx
add rax, 1633593912
and rsi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
add dl, 126 # instrumentation
setnb cl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
