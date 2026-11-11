.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 36
and bl, sil
xor sil, dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and dl, cl
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
