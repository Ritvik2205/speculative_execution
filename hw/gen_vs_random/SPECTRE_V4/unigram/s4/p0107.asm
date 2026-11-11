.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, 32
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
cmovs edx, ebx
cmovnb eax, edi
btc si, bx
cmp bx, 20
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 83
sbb cl, sil
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
mul esi
bts ebx, edi
test ax, bx
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
test edx, 573099753
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 32
cmovo di, bx
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
add di, di
sbb dl, dl
cmovnb si, si
and rcx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rcx]
sbb dx, 37
adc cl, 42
cmovnz bx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
cmovnz ax, dx
xchg ecx, eax
cmp rdx, 94
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
cmovp ebx, ebx
cmovnle cx, cx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 4
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edi, esi
mov rsi, 25
cmp al, 114
add dl, 41
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
or dx, 58
movzx di, dil
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 87
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], bx
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
test rbx, 89
xor dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
