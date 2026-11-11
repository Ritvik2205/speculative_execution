.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and cl, al
cmovnp esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
movsx di, bl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -122
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
add dl, -91 # instrumentation
cmovl rax, rax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 33
xchg esi, eax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
bts edx, edx
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
sbb cl, 12
test bl, -91
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
test al, -26
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
cmovs bx, si
cmp al, -53
movsx eax, dl
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
adc al, al
or ax, 7381
cmovnp di, ax
btr cx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
mov al, cl
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
sbb al, -14
cmovp rbx, rbx
xor rcx, -111
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
and cl, dl
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
xor al, cl
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
test bl, dil
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 1
cmovb bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
