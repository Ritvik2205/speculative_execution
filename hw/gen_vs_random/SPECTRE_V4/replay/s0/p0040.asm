.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -35 # instrumentation
mov al, bl
cmovno ebx, esi
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
test rdx, rdx
sub di, si
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
test al, -85
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
or eax, -612395655
and cx, bx
test edi, -2098143765
xor rdi, -72
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
add eax, 1255256879
cmp dl, -82
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
imul edx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
mov dil, al
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
sbb al, -4
mov sil, dil
add bl, al
imul sil
and ebx, -122
sbb cl, dl
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
cmovnbe rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
cmovz edx, edi
add rcx, rbx
adc rdx, -90
or al, al
btr si, 108
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
test cx, 19367
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
movsx ebx, ax
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
