.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 79
and ecx, -104
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
xor dl, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
xor al, 55
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
or sil, al
test rbx, 10
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
test bl, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
