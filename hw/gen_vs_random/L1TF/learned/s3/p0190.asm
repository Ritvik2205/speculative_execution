.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 104 # instrumentation
mov edx, -377652802
lea bx, qword ptr [rcx]
sub al, 26
not rcx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
test bl, 45
jmp .bb_0.1
.bb_0.1:
test rsi, rdi
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 28
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
