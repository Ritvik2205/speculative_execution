.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
mov sil, al
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
setno dl
lea si, qword ptr [rcx + rbx + 33]
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
sub al, cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
