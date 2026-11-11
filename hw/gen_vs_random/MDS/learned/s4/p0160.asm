.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
xor al, -89
or bl, -52
xor cl, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and al, -103
jmp .bb_0.2
.bb_0.2:
test bl, sil
or al, cl
or sil, -49
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
