.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr edx, 7
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
lea di, qword ptr [rbx + rdi + 85]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
sbb sil, -19
add dil, 88
and rcx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rcx]
cmovnp dx, bx
movsx edi, dil
lea si, qword ptr [rcx + rcx + 38]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
