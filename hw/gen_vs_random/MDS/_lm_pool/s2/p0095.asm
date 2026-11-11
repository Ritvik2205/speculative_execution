.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
xor dl, dil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
and rax, -1931765367
and dil, -39
xor bl, 67
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and al, sil
and di, 99
and sil, sil
bt cx, bx
and dil, -62
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
