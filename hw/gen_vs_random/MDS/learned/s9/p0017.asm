.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, cx
or cl, 30
or al, 74
bts rsi, rax
and cl, -71
or rdx, -109
and al, 75
xor al, 122
or rax, -1523798580
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
test ecx, -1843375753
and eax, 943733866
and bx, 43
or rax, 302048971
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
