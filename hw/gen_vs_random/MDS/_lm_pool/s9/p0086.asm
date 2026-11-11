.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and dil, sil
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
xor bl, cl
jmp .bb_0.1
.bb_0.1:
test dil, -51
and bl, bl
test bl, sil
and edi, 23
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 73
xor dl, al
jmp .bb_0.2
.bb_0.2:
or al, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
