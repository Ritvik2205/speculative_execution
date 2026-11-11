.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
or dl, 51
test dil, -51
or cl, 30
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test sil, 17
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and dil, 125
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test dl, bl
jmp .bb_0.2
.bb_0.2:
test sil, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
