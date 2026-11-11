.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
xor dl, bl
jmp .bb_0.1
.bb_0.1:
sbb bl, dil
jmp .bb_0.2
.bb_0.2:
test dl, 84
lea ecx, qword ptr [rbx]
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 90
sub cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
