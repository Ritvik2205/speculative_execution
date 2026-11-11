.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
test dl, 9
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
or bl, cl
or al, 30
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 23
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and ax, 19224
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
xor al, 8
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
xor al, 8
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
