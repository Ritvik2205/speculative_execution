.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
cmovz rcx, rbx
sub dx, di
add dil, -84
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
not dl
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 14
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
xchg di, di
xor rax, -117
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
add bl, -84 # instrumentation
cmovb ax, cx
test edx, -38580719
add al, 80 # instrumentation
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
btr ebx, 87
adc bl, -58
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
add dl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
btc edi, edx
sbb rcx, rdx
mov cl, al
add bl, 69 # instrumentation
cmovnbe cx, si
neg rax
add sil, -40 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
cmp dl, cl
cmovbe ecx, esi
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
inc sil
mul cl
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
add sil, -18
adc rax, rdx
xor cl, -73
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
not ecx
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
