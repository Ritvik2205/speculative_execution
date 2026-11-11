.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ebx
test al, -104
btc cx, bx
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
add ax, 23614
xor sil, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rbx
xor cl, dl
sbb dl, bl
jmp .bb_0.2
.bb_0.2:
and eax, -409673666
test al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
