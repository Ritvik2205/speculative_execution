.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -78
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor rcx, 71
bt bx, cx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and sil, bl
test dl, 27
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
or al, dl
and rax, 41
xor dl, -59
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
