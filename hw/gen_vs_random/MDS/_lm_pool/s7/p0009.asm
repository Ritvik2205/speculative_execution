.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -80
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
xor al, sil
bt si, ax
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and dil, dil
and ax, 19224
xor dil, dl
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test dl, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
