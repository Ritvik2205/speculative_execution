.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rdx
xor cx, -80
cmovb rax, rcx
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
btc rbx, rcx
and al, 92
test cl, 78
add dl, sil
sub ecx, -107
xor rdx, rsi
and rbx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rbx]
cmp bx, 113
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
test cx, 19367
movzx ebx, dil
movsx rax, cx
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
bts bx, di
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 20
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
inc rdx
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
cmovp rbx, rcx
cmovs dx, si
add al, -109 # instrumentation
cmovns bx, ax
imul rdx, rdi, 31
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edi
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rax]
or bl, 61
mul rcx
or ax, -26182
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
xor esi, eax
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
add al, 41 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 14
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
xor eax, 365940537
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
