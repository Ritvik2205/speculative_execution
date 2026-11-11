.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
inc cl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
test si, 18
jmp .bb_0.1
.bb_0.1:
cmovnbe esi, eax
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
lea ax, qword ptr [rsi + rbx + 66]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 14
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
