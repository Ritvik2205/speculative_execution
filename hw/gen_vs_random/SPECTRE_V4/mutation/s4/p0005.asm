.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
add eax, -105
cmovz edx, edi
or al, al
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
add bl, -35 # instrumentation
mov al, bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
or eax, -1779536330
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
mov sil, dil
test rdx, rdx
test cx, 19367
movsx ebx, ax
xor rdi, -72
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
and ebx, -4
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovnbe rsi, rbx
sbb cl, dl
add rcx, rbx
imul edx
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
test edi, 2142010790
sbb al, 95
btr si, 108
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
mov dil, al
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], -1928332684
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and cx, bx
adc rdx, -90
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
test al, -38
add bl, al
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
cmp al, bl
cmp dl, 23
sub di, si
imul sil
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
