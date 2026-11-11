.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb edi, ecx
imul al
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 23
and dl, -111
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 57
sub bl, dl
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 87
js .bb_0.4
jmp .bb_0.5
.bb_0.4:
jns .bb_0.5
jmp .bb_0.6
.bb_0.5:
add dl, 47
jnp .bb_0.6
jmp .exit_0
.bb_0.6:
xor al, al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
