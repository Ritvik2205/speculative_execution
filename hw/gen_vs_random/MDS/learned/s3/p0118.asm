.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
xor al, bl
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and ax, -12519
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
xor dl, 34
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
not dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or rdi, -11
xor rax, -91
and si, -121
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
xor cl, bl
test al, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
