.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
add cl, 8 # instrumentation
adc dl, dil
adc cl, sil
cmp esi, 16
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
movzx eax, ax
adc sil, dl
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], dx
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
sub bl, sil
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
cmp di, dx
or dil, dil
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rbx
imul cl
sbb cl, -104
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 41
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
sub bl, 17
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
add al, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
imul dx, bx
sbb bl, -94
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
cmp cl, sil
sub cl, 116
sub al, al
test al, sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 78
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
bts edx, 100
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
add al, 122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
add ax, -13169
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 38
mov edi, -1544998000
btc di, 65
xchg rdi, rax
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ebx, edx
imul bx, dx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
