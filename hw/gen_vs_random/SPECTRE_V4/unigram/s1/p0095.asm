.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 41
cmovnbe ax, dx
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 52
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 12
sbb cl, cl
xor dl, 13
cmovs eax, edi
not cx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
xor bx, ax
cmovno ebx, eax
adc bl, 89
add dl, 41
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rax]
adc ax, 45
cmovnb bx, bx
test bl, 24
cmovb eax, edi
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
add dl, 41
add edx, edi
btc ax, bx
test rsi, 57
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
cmovnp rsi, rsi
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
add sil, dl
btc rax, 8
xchg rax, rbx
cmp si, 68
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
cmp sil, 88
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
not bx
cmp cl, 39
cmovnb esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
