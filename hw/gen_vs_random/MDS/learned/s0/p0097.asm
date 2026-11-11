.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
btr edx, edi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
test sil, dil
xor dil, -5
jmp .bb_0.1
.bb_0.1:
test dil, -80
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and di, 99
xor sil, bl
xor sil, 94
jmp .bb_0.2
.bb_0.2:
test ecx, -1843375753
test cx, 401
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
test sil, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
