.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
add rax, 909978580
lea ebx, qword ptr [rax + rax + 9]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
sbb bl, dil
and dil, bl
bts eax, 232
or eax, 287965578
test eax, 899472326
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
