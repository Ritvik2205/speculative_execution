.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
xor cl, 24
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
test al, bl
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
xor al, -4
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
or ax, 30524
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
xor dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
