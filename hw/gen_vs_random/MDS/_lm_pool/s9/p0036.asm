.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
bts rbx, rdi
xor cl, dl
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and cl, -6
xor al, 99
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 34
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 92
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
or cl, dl
jmp .bb_0.2
.bb_0.2:
test bl, -9
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
