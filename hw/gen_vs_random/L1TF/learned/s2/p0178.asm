.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 15
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
sbb bl, cl
jmp .bb_0.2
.bb_0.2:
cmp dl, cl
mov cl, dil
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
