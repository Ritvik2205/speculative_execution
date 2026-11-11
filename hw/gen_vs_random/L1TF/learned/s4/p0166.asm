.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
add rax, 909978580
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
xor al, bl
jmp .bb_0.2
.bb_0.2:
xchg esi, ebx
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
cmp bl, 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
