.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -109
add al, -44
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp al, dl
jmp .bb_0.2
.bb_0.2:
add edx, 23
and al, -23
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
