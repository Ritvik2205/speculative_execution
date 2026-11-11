.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
btr rdx, 30
test esi, -2111618709
imul bl
cmovns rbx, rdx
test cx, 19367
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
cmovnz esi, ebx
movsx rbx, bl
xor di, bx
cmp rdx, -49
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
cmovnp eax, ebx
and sil, -84
add cl, -96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
imul edx, ecx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rcx
cmp sil, sil
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
and bl, 76
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
add dl, 109
cmovnz rax, rax
cmp esi, 123
or edx, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
btr edi, 54
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
cmovno ax, cx
bswap edx
cmp cl, dl
or cx, cx
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rbx]
mov edx, -950755477
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and edi, -102
movzx ecx, dl
mov bl, dil
sbb al, -3
xor cx, si
add rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
