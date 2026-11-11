.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
xor rbx, 89
xor dil, 8
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
xor sil, bl
or di, 56
jmp .bb_0.1
.bb_0.1:
test dil, 46
and bx, 88
or cl, -77
and esi, 38
or bx, 80
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
