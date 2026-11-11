.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 40
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
test sil, 17
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
xor bx, 1
btr di, cx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 58
xor al, 55
and al, al
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and bl, 68
and cx, -2
xor al, -19
cmp sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
