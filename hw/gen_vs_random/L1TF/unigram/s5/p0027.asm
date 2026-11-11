.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb ax, di
imul di, si
imul edi, eax, 76
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
setno cl
xchg dl, dl
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
lea rax, qword ptr [rcx + rcx]
sbb al, sil
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rax
movzx si, sil
setle al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
