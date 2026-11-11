.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz di, dx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
sub sil, sil
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
cmp eax, -240917296
and al, dl
imul rax, rbx
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
test dx, cx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
sbb dil, cl
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
imul rbx, rax, 13
mov ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
