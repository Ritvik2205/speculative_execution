.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
xor cl, 24
or al, -61
jmp .bb_0.1
.bb_0.1:
bt cx, dx
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
and rax, 79
xor sil, -46
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 59
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
or dil, 12
or cl, 119
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
