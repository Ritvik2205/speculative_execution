.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -22
or dl, al
xor ebx, 90
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
xor al, -89
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
or dil, 12
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
xor dil, cl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and dl, -73
and bl, dil
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
