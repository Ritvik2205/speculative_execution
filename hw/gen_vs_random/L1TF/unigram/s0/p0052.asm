.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ecx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 41
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 56
xchg sil, sil
cmp ecx, 10
adc bl, 86
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
add bl, bl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
not esi
test eax, edi
adc sil, 91
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
