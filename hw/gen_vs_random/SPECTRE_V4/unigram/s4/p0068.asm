.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 82
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edx
xor dil, cl
movzx rdx, dil
and rdx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdx]
add bx, 110
and rbx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rbx]
cmovle dx, dx
cmovle rsi, rcx
cmovns di, di
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
cmovnbe rax, rbx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 20
dec rbx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
not ax
add eax, -1796699558
imul edx, ecx, 97
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edi, ecx
cmp cl, al
add dl, al
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
sbb dl, -99
cmovo rax, rdi
sub dl, sil
cmp bx, 41
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
sbb bl, bl
test edx, 573099753
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
xor bx, 74
bts ebx, 22
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 77
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
cmovo rdx, rdx
xor si, cx
cmovnb esi, edx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
imul eax
btc rbx, rax
xchg rax, rdx
add dl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
adc dil, sil
cmovnle eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
