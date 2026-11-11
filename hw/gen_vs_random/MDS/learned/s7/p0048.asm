.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -23364
and rax, 627810357
test bl, dl
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and ax, -16061
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
xor dl, -59
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
test dil, 46
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
or al, -75
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
or rbx, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
