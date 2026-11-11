.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
xor sil, al
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
sub dil, 87
test al, -32
sub sil, -99
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 50
lea ax, qword ptr [rcx + rsi + 77]
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rsi + rax + 56494]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
