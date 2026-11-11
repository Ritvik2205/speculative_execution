.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
lea ecx, qword ptr [rbx + rbx + 2102]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 23
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
xor sil, dl
sbb cl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
