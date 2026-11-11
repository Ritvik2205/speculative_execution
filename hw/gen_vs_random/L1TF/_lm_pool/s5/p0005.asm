.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
mov esi, 42
and al, -68
sub cl, dil
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
lea edi, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
adc eax, 457059541
sbb dil, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
