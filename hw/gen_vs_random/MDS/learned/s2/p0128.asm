.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
xor dl, 34
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
xor al, -19
and cl, cl
or cl, sil
or cl, 119
or al, -17
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
