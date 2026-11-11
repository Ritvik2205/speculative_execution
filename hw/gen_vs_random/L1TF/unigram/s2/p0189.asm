.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc bx, 173
and bl, 89
sbb bx, 48
test cl, 63
bts ecx, eax
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xor cl, cl
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
cmovnbe rbx, rsi
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
test bx, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
