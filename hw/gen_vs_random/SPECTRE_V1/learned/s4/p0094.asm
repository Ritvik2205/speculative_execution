.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1641258390
and dil, cl
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
movsx edi, dl
adc bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
add al, -109
sub rdx, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
