.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 30
test sil, cl
or dil, dil
test al, 91
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
xor di, -83
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and sil, 74
and sil, al
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
test esi, 1857129931
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
or cl, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
