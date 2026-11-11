.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -85
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
test cl, dil
and cl, al
and dil, 125
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
test sil, al
test al, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and sil, -56
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
or al, 25
or dil, -78
test ax, 18697
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
