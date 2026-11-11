.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, sil
adc eax, -1513455903
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and eax, -24
xor dl, al
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
xor dl, 98
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rcx]
movzx ax, al
add cl, -75 # instrumentation
adc cl, 91
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdx, 61
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
imul bx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add sil, -10 # instrumentation
mov si, 34
add rdi, 105
add cl, -42 # instrumentation
adc bl, cl
add al, -75 # instrumentation
adc al, 79
test ax, dx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
movsx ecx, sil
mov al, 17
cmovs ax, ax
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add dl, 118 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
sub dil, al
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
and dx, 1
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 43
add rdx, 47
cmovs ax, dx
mul edx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
sub al, sil
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
and rsi, 7
and si, 68
xor cl, bl
cmovo rax, rax
bts rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
