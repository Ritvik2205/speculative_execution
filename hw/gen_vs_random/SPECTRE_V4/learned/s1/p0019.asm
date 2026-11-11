.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
sbb al, dil
test sil, dil
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
xor cl, 88
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
adc dl, bl
xor ax, -29507
add eax, -105
cmp al, 114
sbb dil, 89
test edx, -38580719
test cl, -31
and al, 41
test sil, -119
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
cmp al, -53
cmp sil, -100
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
sub edi, 5
or ebx, -82
sub al, bl
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
neg al
test sil, al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
mov dl, bl
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
add al, -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
