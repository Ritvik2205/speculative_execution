.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea bx, qword ptr [rcx + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
or cl, 105
movsx ecx, dl
dec al
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
test rax, rbx
cmovle rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
