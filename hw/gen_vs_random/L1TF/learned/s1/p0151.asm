.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc eax, eax
and rsi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rsi]
xor al, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
or dil, bl
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
sub cl, bl
xor al, dil
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
xchg esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
