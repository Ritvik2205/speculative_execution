.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -24
and al, -114
and dl, -73
test al, 91
and al, 14
test bl, al
jmp .bb_0.1
.bb_0.1:
test al, 22
or al, 30
xor sil, 94
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
test bl, 65
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and eax, -85386306
not sil
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
