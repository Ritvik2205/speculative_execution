.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor al, -26
test cl, 91
and sil, al
bts rdx, rbx
and dl, bl
jmp .bb_0.1
.bb_0.1:
or al, sil
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
xor bl, sil
and sil, 74
xor dil, 8
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
bt ax, si
and bl, al
xor al, 122
xor dl, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
