.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rax, 1994547909
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
xor al, bl
and cx, -79
jmp .bb_0.1
.bb_0.1:
bt ecx, ebx
and ax, 26813
xor al, cl
or sil, dl
lea bx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
