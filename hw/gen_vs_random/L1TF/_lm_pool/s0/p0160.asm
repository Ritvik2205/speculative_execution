.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
test bl, sil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
test cl, 12
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
lea rbx, qword ptr [rsi + rax]
jmp .bb_0.2
.bb_0.2:
and ax, 26813
jmp .bb_0.3
.bb_0.3:
setno al
xor ax, 22976
sbb al, cl
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
