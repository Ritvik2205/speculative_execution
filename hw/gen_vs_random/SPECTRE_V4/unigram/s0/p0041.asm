.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 13
cmovb edx, edi
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and al, -127
cmovl rbx, rsi
cmovnle rdi, rdi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 21
movzx rsi, ax
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
cmp dl, 6
test dl, dil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
sbb dl, -99
cmovs edi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
mul dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 83
sub al, 50
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
add rcx, rdx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
test dl, sil
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 43
xor cl, -54
cmovle rax, rcx
and dl, 3
and dil, sil
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 9
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
cmp dil, -124
and rdi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdi]
xchg ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 55
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
