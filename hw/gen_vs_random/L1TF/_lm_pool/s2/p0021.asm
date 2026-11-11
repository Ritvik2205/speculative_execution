.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, ax
cmovnz dx, bx
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
jmp .bb_0.1
.bb_0.1:
add dl, -70
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
lea cx, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
