.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
or si, 94
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
or dil, dl
xor cx, -18
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
xor cl, 83
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test rbx, 72
bts rsi, 221
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
