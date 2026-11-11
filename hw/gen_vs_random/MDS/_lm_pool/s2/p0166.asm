.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -55
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
or cl, 6
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and al, dl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
xor al, cl
and cl, -71
and cx, -2
test al, dil
or sil, dil
or cl, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
