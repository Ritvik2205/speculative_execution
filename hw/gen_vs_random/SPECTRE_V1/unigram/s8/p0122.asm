.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 123 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
cmp dl, 119
imul ecx, edx
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
cmp cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
bswap rdx
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
not esi
sbb bl, cl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
