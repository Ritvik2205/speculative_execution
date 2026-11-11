.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 38
or bl, sil
xor al, 99
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
or dil, bl
not bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and sil, cl
and bx, 83
and rax, -636362975
and dl, dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
