.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
lea rcx, qword ptr [rdi + rdi]
xor rcx, 55
add sil, -61
jmp .bb_0.1
.bb_0.1:
test dl, sil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
sets cl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
