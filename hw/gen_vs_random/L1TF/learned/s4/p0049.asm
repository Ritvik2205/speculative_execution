.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
lea rax, qword ptr [rcx + rbx]
sub dil, 87
xchg dl, sil
xor cl, dil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
cmovbe ecx, eax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
