.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
sub cl, -49
lea rdx, qword ptr [rcx]
btc edx, edi
cwd
lea edi, qword ptr [rdi + rdx]
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
lea rdi, qword ptr [rbx + rdi + 45901]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
sub ax, 26007
cmovnbe rdx, rbx
bt dx, 132
adc cl, dl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
sbb al, -23
sub al, -97
lea cx, qword ptr [rax + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
