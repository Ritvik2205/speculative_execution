.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
or si, 94
or cl, -77
xor dl, dil
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
jmp .bb_0.1
.bb_0.1:
or dl, al
jmp .bb_0.2
.bb_0.2:
and rax, 1886208862
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
test ebx, -961564216
or dl, cl
test cl, sil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
or al, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
