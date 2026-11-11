.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
sub al, bl
or eax, -62
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or al, dl
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
add cl, 65 # instrumentation
cmovo rcx, rdx
test dil, -126
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
lea rdi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
