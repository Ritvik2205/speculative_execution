.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
bt di, cx
test sil, al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
btc si, 99
or al, 30
xor al, bl
sbb al, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
