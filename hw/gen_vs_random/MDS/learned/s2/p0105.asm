.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rax, 79
or dil, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
xor sil, -15
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
not dl
jmp .bb_0.2
.bb_0.2:
test rsi, 54
jmp .bb_0.3
.bb_0.3:
test dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
