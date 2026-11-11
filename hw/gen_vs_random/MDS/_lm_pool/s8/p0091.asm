.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
test bl, -14
and rax, -2039117613
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
test esi, 425331143
jmp .bb_0.1
.bb_0.1:
test bl, -114
not al
test al, -7
cmovnp rdx, rcx
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
