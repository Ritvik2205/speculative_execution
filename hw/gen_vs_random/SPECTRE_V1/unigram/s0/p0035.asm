.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
sub sil, bl
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdx]
add cl, -96 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
lea rcx, qword ptr [rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
btc bx, si
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
sbb rcx, 75
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 26
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdx]
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
