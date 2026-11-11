.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 16
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
mov rdi, rdx
cmp rax, -1070057082
movsx ebx, bx
mov dil, dil
and rbx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rbx]
adc sil, 77
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
test esi, -222751961
xor rsi, -102
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
btc bx, 254
and bx, 53
cmovl ax, si
movsx cx, dl
xor rax, rcx
bts rsi, 236
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
sub di, 9
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
add eax, ecx
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
movzx ebx, cl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
add dl, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 4
neg di
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
test cl, -119
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdx
add al, bl
cmp ebx, -27
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], esi
test bl, al
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
sub di, 9
adc al, dil
cmovnb ax, dx
sub dil, -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
