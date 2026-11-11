.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 106
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and ax, 31082
and ebx, 15
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
test sil, dl
test cl, cl
bt dx, di
bt ax, si
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test sil, 17
jmp .bb_0.2
.bb_0.2:
test dl, al
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
