.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 44 # instrumentation
cmovns si, ax
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
sub dil, -39
lea rdx, qword ptr [rcx + rdi]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
lea dx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and di, si
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and dl, 32
cmovno di, ax
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
add ax, 23614
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
and al, bl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
dec cl
or ax, -10161
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
xor cl, dl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
