.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, 62
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
cmovb di, dx
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
add dl, -121 # instrumentation
cmovnp eax, ebx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 38
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 49
add edi, ebx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
add cl, -3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
lea rbx, qword ptr [rbx + rdx + 66]
sbb al, sil
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
