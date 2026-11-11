.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 81
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
setle bl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
and dl, bl
add al, -53 # instrumentation
sbb bl, dl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 33
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
add cx, -103
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 61
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
xchg bl, dl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
cmovle ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
