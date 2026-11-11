.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and edi, 23
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 13
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
and cl, -71
xor cl, 15
xor sil, 110
or al, -17
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
or dx, 125
bt ax, dx
or bl, 100
xor di, 93
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
