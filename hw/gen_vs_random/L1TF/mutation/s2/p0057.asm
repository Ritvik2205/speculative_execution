.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edx, 99
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
sub al, -97
mov ax, dx
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
add cl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
movsx eax, al
setle bl
or rcx, rax
lea rax, qword ptr [rax + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
jmp .bb_0.1
.bb_0.1:
add bl, 104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
test bl, 84
setno bl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ecx
adc cl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
