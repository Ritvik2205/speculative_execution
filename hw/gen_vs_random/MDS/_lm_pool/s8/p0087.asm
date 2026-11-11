.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
test bl, -9
and al, 82
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
or al, -75
and sil, sil
jmp .bb_0.1
.bb_0.1:
test dil, -80
xor bl, dil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
jmp .bb_0.2
.bb_0.2:
or al, 30
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or al, 74
test al, dil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
