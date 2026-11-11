.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
xor bx, 71
lea esi, qword ptr [rdx + rdx + 96]
or cx, 58
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 81
cmovb dx, cx
lea ecx, qword ptr [rax]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 65
jmp .bb_0.3
.bb_0.3:
xor ax, -24879
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
