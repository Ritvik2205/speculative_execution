.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx], 68
lea rbx, qword ptr [rcx + rdx]
or bl, 60
sub rdx, 12
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
cmp al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
