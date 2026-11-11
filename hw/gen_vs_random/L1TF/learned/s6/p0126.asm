.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
test al, -32
or dl, dl
sbb al, bl
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
or dil, -113
and al, -68
xor dil, -42
cmp al, 27
sbb al, 61
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 46
or rsi, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
