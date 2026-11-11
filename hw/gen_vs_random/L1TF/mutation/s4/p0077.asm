.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, dl
sub ax, -27107
sub cl, 86
lea rdx, qword ptr [rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
lea rdi, qword ptr [rbx + rdi + 45901]
or dl, dl
btc edx, edi
bt dx, 132
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
cwd
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
lea edi, qword ptr [rdi + rdx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
cmovnbe rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
