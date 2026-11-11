.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
neg ebx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
btr rsi, rbx
add al, 105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 2
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 86
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
adc di, bx
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
cmp bl, -114
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
