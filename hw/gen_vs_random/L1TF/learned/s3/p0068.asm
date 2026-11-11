.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sbb cl, dl
inc bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
sbb dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
