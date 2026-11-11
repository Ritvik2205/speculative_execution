.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rcx, rbx
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
test rdx, rdx
test al, 18
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
add bl, al
and cx, bx
add bl, -35 # instrumentation
mov al, bl
and ebx, -122
imul sil
xor rdi, -72
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
movsx ebx, ax
or eax, 143573881
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovz edx, edi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
mov dil, al
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
test edi, -2098143765
or al, al
sbb al, 95
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
cmovno ebx, esi
mov sil, dil
cmp al, bl
imul edx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
add eax, 84
adc rdx, -90
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
cmovnbe rsi, rbx
btr si, 108
cmp dl, 95
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
sbb cl, dl
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
test cx, 19367
sub di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
