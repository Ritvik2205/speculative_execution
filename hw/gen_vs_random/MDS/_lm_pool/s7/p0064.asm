.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 91
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and al, 84
or cl, 6
test bl, cl
bt di, si
or cl, 39
test eax, 1729060510
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
test ax, 30932
and si, -121
or ax, 127
and bl, 68
or al, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
