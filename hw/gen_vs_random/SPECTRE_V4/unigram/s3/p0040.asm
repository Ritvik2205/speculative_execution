.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
add cl, 122 # instrumentation
cmovz rcx, rdx
movzx ebx, al
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
add edx, 28
mov rbx, rcx
cmovno eax, ebx
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
add bl, al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 8
add di, -74
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
test sil, al
cmovb esi, ecx
or sil, sil
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
or dl, dl
test al, dl
test dl, sil
or edx, -127
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 22
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
add ax, 28666
mov sil, sil
xchg rdi, rsi
cmovb cx, cx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rsi]
add ebx, 3
add al, al
cmovs dx, dx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
test rax, -344032571
add cl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
cmovp si, bx
imul rdx, rbx, 30
sub al, cl
cmovnb bx, bx
cmovnle si, si
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
