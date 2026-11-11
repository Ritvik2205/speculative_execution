.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
adc cl, dl
lea edi, qword ptr [rdi + rdx]
bt dx, 132
lea rdi, qword ptr [rbx + rdi + 45901]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
cwd
cmovnbe rdx, rbx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
or dl, dl
sub ax, -3178
lea rdx, qword ptr [rcx]
sub cl, 86
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
btc edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
