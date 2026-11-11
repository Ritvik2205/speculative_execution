.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
adc edx, 73
adc cx, -30
jmp .bb_0.1
.bb_0.1:
add dil, cl
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
adc al, -82
mov dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
