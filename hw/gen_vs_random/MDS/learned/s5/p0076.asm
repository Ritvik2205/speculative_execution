.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
test al, 91
xor dil, -5
or al, 74
test dl, dil
xor di, -83
or al, dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
or dil, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and al, -55
xor sil, -14
test al, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
