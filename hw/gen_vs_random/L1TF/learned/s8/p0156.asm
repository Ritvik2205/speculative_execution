.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
or al, -2
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
setnle bl
xor cl, sil
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 95
cmovl di, cx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
