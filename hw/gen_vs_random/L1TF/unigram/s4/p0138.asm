.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rsi + rdx + 49]
cmovnbe ax, cx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
mov al, bl
lea rsi, qword ptr [rbx + rdx]
cmovbe esi, ebx
add dl, -53 # instrumentation
dec ax
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovnbe rdi, rsi
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdx]
or edi, ebx
lea cx, qword ptr [rdi]
movsx rdi, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
