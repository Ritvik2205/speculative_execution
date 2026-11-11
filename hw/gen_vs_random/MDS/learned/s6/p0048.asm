.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
test sil, -55
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
or cl, al
xor al, 8
or al, cl
and bl, dl
xor dil, -70
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], dx
and al, 35
test esi, 1857129931
and ebx, 81
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
