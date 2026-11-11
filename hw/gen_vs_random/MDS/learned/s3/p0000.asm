.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
or cl, sil
jmp .bb_0.6
.bb_0.6:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
or sil, -49
or dl, -21
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rax, -2039117613
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
