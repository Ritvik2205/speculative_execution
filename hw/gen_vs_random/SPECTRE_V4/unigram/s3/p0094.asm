.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, di
sbb al, 31
bt ax, 248
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
cmp dil, bl
add rdi, 111
test dl, sil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
sbb ax, 7207
btc rbx, rbx
adc bl, bl
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
sbb cx, 106
add al, -1
cmp ebx, edi
mov eax, eax
sub cl, -119
mov eax, 522619143
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdi]
cmovle rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and si, -70
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
test sil, -119
imul dx
cmp bl, 12
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
mov bl, 58
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
and rbx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rcx]
movzx ebx, cl
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
or sil, dil
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
sub sil, sil
or rbx, rdx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
cmovo di, si
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], esi
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], -67
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
