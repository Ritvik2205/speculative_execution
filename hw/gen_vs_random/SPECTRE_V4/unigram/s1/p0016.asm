.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
cmovnl rbx, rcx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
add al, 5
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
xor rdi, rax
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx], 57
sub al, dl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 60
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
imul rdi
sub al, 99
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 24
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 75
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
test rbx, 89
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
sub sil, sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
adc edi, 15
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx], 33
or cl, dil
cmovs rdx, rdi
imul rsi
cmovnl rdx, rdx
xchg bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
add edi, 11
xor dil, sil
movzx rsi, dx
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
cmovnb eax, edx
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
movzx dx, sil
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], dx
test cx, 62
test dil, 40
cmovp cx, ax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
