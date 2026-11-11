.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or ax, 18658
mov bl, dil
or bl, al
movsx di, dl
lea cx, qword ptr [rbx + rsi]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
adc cl, -19
add cx, -103
and dl, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
