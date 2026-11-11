.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
cmovb ax, si
xor di, 42
add sil, dl
adc bl, -14
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
