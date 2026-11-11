.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rcx
cmp rcx, 94
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 75
add sil, 9 # instrumentation
adc sil, al
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
not al
lea si, qword ptr [rdx + rax]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rsi + rsi]
test rdx, 1657596343
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 46
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
add bl, 113 # instrumentation
setnb bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
