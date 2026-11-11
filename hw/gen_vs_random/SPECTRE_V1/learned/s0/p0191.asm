.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 70
inc eax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, sil
and al, -54
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea cx, qword ptr [rcx]
js .bb_0.3
jmp .exit_0
.bb_0.3:
test sil, -31
jnp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
