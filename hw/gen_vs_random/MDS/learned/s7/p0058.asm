.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 65
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rax, -731384280
test cl, sil
and edi, 23
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
test bl, -9
xor rax, -91
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
and edx, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
