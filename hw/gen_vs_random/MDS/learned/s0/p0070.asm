.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
and rax, 1250429750
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
xor al, -19
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
test bl, sil
or al, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
or cl, 7
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 74
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
xor dil, -70
btr si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
