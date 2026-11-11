.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
and dl, sil
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
add al, -117 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdx], eax
movzx esi, sil
add cl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
mov rcx, rdx
movzx edx, dx
cmovs ecx, ebx
test eax, edx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 66
xor rsi, rbx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 25
and rbx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rbx]
cmovle si, si
add rax, rdx
movzx edx, dil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 51
cmovb edi, esi
add eax, -1796699558
sub al, dl
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
test rax, -344032571
test ecx, 25
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and bx, 95
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
adc dl, al
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
cmovs rax, rdx
sub cl, 116
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
add bx, 110
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
and rdi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdi]
test sil, 2
sub ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
