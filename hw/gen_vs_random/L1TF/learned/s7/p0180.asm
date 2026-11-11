.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
xor al, 38
test al, -82
bt eax, edx
jmp .bb_0.1
.bb_0.1:
cbw
jmp .bb_0.2
.bb_0.2:
test bl, 84
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
xor ax, 30996
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
