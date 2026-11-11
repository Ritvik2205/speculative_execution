.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, ecx
and eax, 933895314
and dil, -114
and al, -54
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
movzx eax, dx
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
cmp ebx, -33
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
