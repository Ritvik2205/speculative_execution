.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
sbb dl, al
sbb al, cl
add cl, 0 # instrumentation
adc al, cl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
sbb bl, al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or rdx, 92
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
cmovno rbx, rax
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
mov dl, bl
test sil, -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
