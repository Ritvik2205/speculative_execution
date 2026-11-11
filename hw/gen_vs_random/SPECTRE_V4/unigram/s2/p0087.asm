.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
xor rcx, rsi
and rdi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdi]
or al, -71
add dl, -114 # instrumentation
cmovl dx, bx
mul dl
add bl, -26 # instrumentation
btr ebx, 46
adc dil, 11
sbb rdx, rbx
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
test cl, bl
or esi, edx
cmovns dx, ax
mov rax, rdi
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 99
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 24
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
movzx rbx, cx
cmovnp ecx, ecx
sbb bl, bl
cmovs ax, bx
add rax, rdi
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
cmp ax, cx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 89
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
cmp bl, sil
or al, bl
test bx, -1599
cmovl rdx, rbx
mov al, 48
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
movzx ecx, cl
add cl, -21 # instrumentation
adc rsi, 36
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
