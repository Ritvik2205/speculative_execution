.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
add bl, 68
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 69
test al, -82
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
cmp ax, -14781
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
sbb cl, -11
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
