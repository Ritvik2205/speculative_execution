.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
test cl, 54
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
xor dl, 40
and sil, 74
xor sil, bl
and ax, 19740
xor cl, -13
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
test dl, al
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
