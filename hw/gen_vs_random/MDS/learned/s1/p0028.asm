.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rsi
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
or al, -17
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and si, -121
or cl, sil
jmp .bb_0.1
.bb_0.1:
or cl, bl
xor cl, bl
xor bl, al
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
test si, 90
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
