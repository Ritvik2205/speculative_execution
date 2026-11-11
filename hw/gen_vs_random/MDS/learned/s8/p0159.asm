.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 41
btr ax, bx
or edi, -88
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and al, sil
test sil, 17
test rdx, 48
bt ax, si
xor al, 55
test ecx, -1843375753
xor di, -83
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
or sil, -49
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 15
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
test rdx, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
