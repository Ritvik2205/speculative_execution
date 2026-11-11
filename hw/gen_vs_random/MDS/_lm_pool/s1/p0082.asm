.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rsi
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
or ebx, -104
btr ecx, esi
and cl, 79
and bl, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
test dl, bl
jmp .bb_0.2
.bb_0.2:
test al, 66
and al, cl
or cl, -77
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
