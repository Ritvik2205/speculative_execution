.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
add rax, 909978580
or al, -57
cmovno ax, di
jmp .bb_0.1
.bb_0.1:
test al, -56
lea si, qword ptr [rdx + rax + 9]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
and sil, 37
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 8
lea cx, qword ptr [rax + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
