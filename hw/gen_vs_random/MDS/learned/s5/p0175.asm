.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
test al, -81
or dil, cl
test bl, -14
test bl, bl
btr cx, ax
not al
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
xor dil, -70
jmp .bb_0.1
.bb_0.1:
test al, -81
xor sil, cl
test al, -81
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
test al, dl
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
xor bl, -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
