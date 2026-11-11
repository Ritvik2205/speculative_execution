.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, al
xor rdi, -72
imul sil
add bl, -35 # instrumentation
mov al, bl
sbb cl, dl
sub di, si
cmovno ebx, esi
and cx, bx
imul edx
test cx, 19367
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
or al, al
mov dil, al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
cmp al, bl
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], -1928332684
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
btr si, 114
test al, -38
adc rdx, -90
movsx ebx, ax
add rcx, rbx
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
add eax, 1936378991
and ebx, -4
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 2
cmovnbe rsi, rbx
mov sil, dil
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
cmovz edx, edi
cmp dl, -82
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
test edi, -2098143765
sbb al, -52
or eax, 1470564945
test rdx, rdx
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
