.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
test bl, -92
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor sil, 64
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
lea rdx, qword ptr [rcx + rdi + 62]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 27
sbb eax, -1165635662
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
