.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 54
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rcx
cmp rcx, 9
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
bt ecx, 204
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
js .bb_0.4
jmp .exit_0
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
xor sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
