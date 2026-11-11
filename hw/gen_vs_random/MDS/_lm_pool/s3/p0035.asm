.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -81
or dl, dl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
or al, -17
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
xor al, 122
cmovnb rsi, rdx
xor dx, 43
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
