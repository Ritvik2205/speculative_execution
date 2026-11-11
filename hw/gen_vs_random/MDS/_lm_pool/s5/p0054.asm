.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 73
test dl, cl
jmp .bb_0.1
.bb_0.1:
or bl, dl
or al, dl
test dl, 27
bt di, ax
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and dl, -73
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
