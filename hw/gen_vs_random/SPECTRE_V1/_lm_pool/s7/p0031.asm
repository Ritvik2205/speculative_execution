.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 75
lea di, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 81
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 19
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
adc al, cl
sbb dl, 127
and al, al
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
jnp .bb_0.4
jmp .exit_0
.bb_0.4:
xor sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
