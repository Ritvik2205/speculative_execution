.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
test bl, -114
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
test al, dl
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
xor cl, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor rdx, -59
and si, -121
test rax, -359674714
xor cl, dl
xor ax, -4010
and cl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
