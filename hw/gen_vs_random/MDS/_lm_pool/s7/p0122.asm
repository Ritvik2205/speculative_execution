.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 339
test al, bl
xor dil, -124
jmp .bb_0.1
.bb_0.1:
and dl, al
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
btr cx, bx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
or dl, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
xor cl, 98
bt esi, edx
xor rsi, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
