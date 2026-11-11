.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bl
or dil, dil
and ebx, 86
lea rsi, qword ptr [rdx + rax + 25]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
setz dl
lea rbx, qword ptr [rdi + rdi]
sbb si, cx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
nop
xor dil, 2
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
lea rsi, qword ptr [rbx + rdi]
setl bl
sub rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
