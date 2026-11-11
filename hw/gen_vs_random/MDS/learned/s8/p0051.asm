.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
test al, 22
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and al, 14
and dl, -73
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
xor dl, 40
test dil, -51
and cl, -19
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 51
xor dl, -59
test sil, 17
test ax, -11534
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
