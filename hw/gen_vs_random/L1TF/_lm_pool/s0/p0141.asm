.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
xchg al, sil
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
or dil, cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
jmp .bb_0.4
.bb_0.4:
xor al, 38
add ebx, 2
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
or sil, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
