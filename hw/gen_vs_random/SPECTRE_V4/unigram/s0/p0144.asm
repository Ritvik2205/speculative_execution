.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ecx, 233
bswap ebx
or sil, 1 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
dec rax
movzx rsi, bl
sub ax, -1393
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
cmp al, al
cmp bx, 113
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
inc eax
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and eax, -1555813586
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], eax
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 36
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and al, -118
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
movzx edi, al
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 99
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
sub dil, -40
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
xor cl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
sub al, bl
or dl, al
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 5
and dl, -11
mov al, dl
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
