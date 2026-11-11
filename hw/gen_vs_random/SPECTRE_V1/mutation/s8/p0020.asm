.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
cmovnp bx, di
add al, cl
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
test cl, dl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 36
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc bl
or dil, 80
or eax, -126
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
xor al, dl
cmp dil, -58
jmp .bb_0.2
.bb_0.2:
add cl, 43 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -62
lea rax, qword ptr [rbx + rdx + 34714]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
test bl, -8
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rsi
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
