.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
cmovno eax, eax
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
add dl, -78 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
cmovbe di, di
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
lea ecx, qword ptr [rdx]
xor dx, di
sbb al, -4
xchg dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 77
inc bl
xor rax, 20
xchg bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
