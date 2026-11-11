.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and cl, dil
test al, -7
btr cx, ax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
or al, 30
or sil, bl
xor bl, dil
and sil, 89
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
xor di, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
