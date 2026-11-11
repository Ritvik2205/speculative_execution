.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, 132
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
lea edi, qword ptr [rdi + rdx]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
btc edx, edi
lea rdi, qword ptr [rbx + rdi + 45901]
sub cl, -49
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
lea rdx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
or dl, dl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
cwd
adc cl, dl
sub ax, 26007
cmovnbe rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
