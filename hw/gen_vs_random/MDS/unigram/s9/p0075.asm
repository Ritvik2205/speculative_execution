.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rax, rdx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 48
test rsi, 96
bt edi, ecx
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
and dl, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
and dil, 49 # instrumentation
cmovp rbx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
or bl, 43
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
bts rsi, rbx
test dil, bl
and di, 99
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
xor rdx, -59
or sil, -78
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
