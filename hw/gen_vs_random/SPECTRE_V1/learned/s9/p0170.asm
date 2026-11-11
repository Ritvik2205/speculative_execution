.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
add sil, bl
adc cx, -30
add al, al
sub rax, -1628299544
xor di, 62
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
test al, -99
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
