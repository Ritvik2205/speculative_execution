.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, 86
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
cwd
lea edi, qword ptr [rdi + rdx]
lea rdx, qword ptr [rcx]
btc edx, edi
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
cmovnbe rdx, rbx
adc cl, dl
or dl, dl
bt dx, 132
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
sub ax, 7297
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
lea rdi, qword ptr [rbx + rdi + 45901]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
