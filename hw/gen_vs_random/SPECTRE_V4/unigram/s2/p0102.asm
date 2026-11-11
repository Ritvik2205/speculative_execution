.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -26
cmovnle rcx, rax
sub bl, bl
movzx ebx, di
bt ebx, 98
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 90
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
cmovl esi, ecx
sub di, 9
inc edx
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 73
cmovs dx, di
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
sbb sil, 24
test al, 52
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
test esi, -222751961
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
add rbx, rax
sub eax, -529389957
bts dx, 26
btc di, cx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add bl, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
mov ebx, 51969593
mov bl, -69
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
mov al, 82
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 14
bswap esi
imul rcx
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
mov di, cx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
bt ax, 145
add bl, -65 # instrumentation
adc dl, bl
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdx
cmovnb di, ax
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
and dl, cl
sbb sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
