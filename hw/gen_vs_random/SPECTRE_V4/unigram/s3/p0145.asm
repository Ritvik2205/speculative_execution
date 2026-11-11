.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 12
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
btc rdi, rbx
add cl, -26 # instrumentation
btr ecx, 78
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and al, dl
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 92
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
cmovns si, cx
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
btc ax, 92
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
test edi, -1249897727
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 20
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 41
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
add si, 4
xor dl, 43
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi]
bswap edx
add cl, 100
sub al, al
cmp cx, di
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
xor dx, 2
test ebx, 1263899340
mul cl
imul rax, rdx
cmovnb bx, bx
and rcx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rcx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, edx
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
mov si, 20
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], di
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rcx, -102
and rax, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rax]
adc al, al
sub cl, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
