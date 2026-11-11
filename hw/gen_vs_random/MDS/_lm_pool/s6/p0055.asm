.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
xor al, 34
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and sil, sil
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
or cl, 39
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
xor al, sil
not sil
and cl, -111
btr si, bx
or sil, dil
test al, cl
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
