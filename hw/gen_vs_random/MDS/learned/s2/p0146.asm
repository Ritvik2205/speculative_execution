.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
not dil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rax, 498847670
jmp .bb_0.1
.bb_0.1:
btr edx, edi
btc bx, 104
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
not dl
test cl, -113
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
