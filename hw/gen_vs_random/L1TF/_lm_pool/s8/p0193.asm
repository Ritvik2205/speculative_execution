.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
lea ax, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
and al, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
sub cl, -49
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
add bl, -113 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
lea si, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
