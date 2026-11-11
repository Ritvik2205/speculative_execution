.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
test sil, cl
and dil, -39
and al, bl
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
btr ax, cx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
xor rax, -91
jmp .bb_0.1
.bb_0.1:
test dil, 46
btr ecx, edi
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or al, 74
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
