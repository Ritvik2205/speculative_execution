.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
and al, cl
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
cmovnz rbx, rcx
add cl, cl
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
cmp bl, -114
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
