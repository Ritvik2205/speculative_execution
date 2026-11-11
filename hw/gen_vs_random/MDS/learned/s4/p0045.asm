.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc bx, si
test edx, -372470678
jmp .bb_0.1
.bb_0.1:
xor al, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
xor al, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and dl, bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
xor eax, 2063216578
and al, al
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
test dl, 9
or rax, 52
and dl, -73
xor sil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
