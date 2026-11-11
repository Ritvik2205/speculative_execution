.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 94
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 95
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
neg dl
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
lea esi, qword ptr [rax + rcx + 30]
btc ecx, ecx
xor al, dl
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
add dl, 64 # instrumentation
sbb dl, bl
lea rsi, qword ptr [rsi]
and sil, dil
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 100
and rsi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
