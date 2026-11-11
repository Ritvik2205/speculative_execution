.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, di
cmp ecx, 97
xor sil, cl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 91
and cl, bl
xor cl, 89
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 49
cmp dil, sil
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
