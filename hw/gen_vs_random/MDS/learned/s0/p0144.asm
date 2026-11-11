.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -17
xor al, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
jmp .bb_0.1
.bb_0.1:
cmovnb rbx, rdi
xor sil, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
