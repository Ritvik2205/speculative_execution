.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -2
or dl, 85
btr rcx, 94
or al, bl
xor cl, 24
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and al, 35
xor al, 115
or dl, 85
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
