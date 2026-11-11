.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
xor dl, al
test al, dil
test dil, cl
xor cl, 83
xor eax, -885380838
and dl, dl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
xor cl, 98
test edx, -1561252782
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
xor sil, 94
jmp .bb_0.1
.bb_0.1:
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
