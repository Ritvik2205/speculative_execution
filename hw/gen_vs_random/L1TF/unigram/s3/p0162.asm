.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, edi
cmp sil, sil
add al, -49 # instrumentation
setnb al
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 39
adc edx, eax
setnb cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
not eax
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
btc edx, esi
cmovno si, si
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
mov bl, dl
test ecx, 87
test rdx, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
