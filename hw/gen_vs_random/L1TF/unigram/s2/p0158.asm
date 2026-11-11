.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
cmovnz rax, rcx
lea rbx, qword ptr [rsi + rcx + 32]
test al, -82
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
add bl, 42 # instrumentation
lea ecx, qword ptr [rbx + rcx]
setns al
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
add al, 39 # instrumentation
cmovnb ax, si
bt rdi, 18
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], ax
bts eax, 232
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
mov edi, ebx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
