.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
btc di, 233
test edi, -1252846009
xor sil, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
or rdx, -109
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
xor ax, -6793
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
xor dl, -19
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
