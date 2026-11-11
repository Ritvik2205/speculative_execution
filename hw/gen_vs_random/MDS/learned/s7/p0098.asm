.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
btc si, 99
test ecx, -1843375753
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
or bl, sil
test rax, -363019044
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and bl, bl
test bl, -14
xor al, bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
and si, -121
bt si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
