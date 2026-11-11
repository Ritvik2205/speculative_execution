.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, dx
lea edi, qword ptr [rsi]
test sil, 29
xor al, bl
and sil, bl
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
lea rbx, qword ptr [rdi + rsi]
sbb dl, al
movsx ecx, al
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
