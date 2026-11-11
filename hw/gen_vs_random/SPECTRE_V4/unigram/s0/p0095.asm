.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
add sil, al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
dec al
and rdi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -96
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
cmp cl, bl
cmovno rax, rsi
add al, -94 # instrumentation
cmovnle rsi, rax
mov rcx, 78
add ebx, edx
adc bl, -20
add dl, 45 # instrumentation
cmovbe rcx, rdx
mov dl, al
inc rcx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
xchg al, al
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
cmp bl, 12
mov bl, 58
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
movzx edi, sil
xor ax, -22861
or rax, rdi
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
or dl, 71
and dl, dil
add sil, 3
cmp rsi, 22
cmovnp esi, esi
and edi, -102
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
or rcx, 24
movsx ebx, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
xor rcx, rbx
sbb bx, 87
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
