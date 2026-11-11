.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
or dl, dl
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
sub cl, -49
sub ax, -3178
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
cmovnbe rdx, rbx
cwd
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
adc cl, dl
btc edx, edi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
lea rdi, qword ptr [rbx + rdi + 45901]
bt dx, 132
lea edi, qword ptr [rdi + rdx]
lea rdx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
