.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, -73
sub eax, -1804712207
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
add cl, -9
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
cmp cl, dl
add al, 66 # instrumentation
cmovp ebx, ebx
and rcx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rcx]
cmp al, 75
and rdx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rdx]
adc al, dl
and dl, dl
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
test edx, 1479885278
or dil, -16
adc rax, rcx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdi]
sub cl, bl
neg bl
inc si
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 30
cmovnp edi, esi
cmp eax, -813838876
mov edi, -1866088512
test bl, -116
and rbx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rbx]
movsx ebx, ax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
mov dil, bl
imul rcx, rdx
sbb di, cx
btr edx, 160
sub al, 0
bt ecx, 247
or ecx, 102
movsx bx, al
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 37
sub al, bl
and al, -124
bt ax, si
bt ax, di
sub al, sil
xor dx, 7
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
mov al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
