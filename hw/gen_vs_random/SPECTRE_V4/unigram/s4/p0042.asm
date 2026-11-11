.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cl
and bl, -30
movzx ebx, ax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
or ecx, 17
cmovnle rsi, rbx
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
adc dil, -15
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
adc bl, 97
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 44
inc esi
btr ecx, esi
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
bt di, 98
test eax, -251558852
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
adc si, -74
cmp al, bl
test rdi, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
imul ax
cmovnle rcx, rdx
and rbx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rbx]
and di, -65
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 69
adc al, al
inc ecx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
movzx ebx, sil
sbb ax, -30070
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
add sil, 3
inc rbx
cmovnp di, cx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 75
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
btc eax, 62
sub al, dl
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
