.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc sil, bl
and rsi, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rax
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -86
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
mov edx, ecx
movzx ebx, sil
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
add dl, dil
movzx eax, cx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
mov al, bl
xor cx, dx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
add rcx, -61
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 80
test cl, -31
not edx
or al, sil
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], sil
cmovnle esi, ecx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
add cl, 31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 57
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
movsx rcx, dl
mov dil, 81
cmp rcx, -121
and rdi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
or al, bl
inc ecx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
mov dl, -124
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
cmovs rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
sub dil, cl
sub bl, 66
cmp al, al
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rdx, rbx
add cl, 14 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
