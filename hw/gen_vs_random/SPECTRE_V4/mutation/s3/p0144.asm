.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
cmovz edx, edi
adc rdx, -90
imul edx
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
add bl, al
sbb al, -3
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
cmovnbe rsi, rbx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
or eax, -1779536330
sbb cl, dl
add eax, -1398129660
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
and cx, bx
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
add rcx, rbx
imul sil
movsx ebx, ax
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
btr si, 114
and ebx, -4
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
test cx, 7280
xor rdi, -72
or al, al
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
cmp dl, 95
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
mov dil, al
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
add bl, -35 # instrumentation
mov al, bl
test edi, 2142010790
cmovno ebx, esi
cmp al, bl
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
test rdx, rdx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
mov sil, dil
test al, -85
sub di, si
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
