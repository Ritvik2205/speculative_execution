.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc bx, cx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
xor dil, sil
jmp .bb_0.1
.bb_0.1:
xor al, 9
xor al, 115
test ecx, -1843375753
test rbx, 25
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -83
test al, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
xor cl, 15
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
