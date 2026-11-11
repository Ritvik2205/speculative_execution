.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 39
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor ecx, 8
or rax, 52
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
xor cl, al
or sil, dl
xor cl, dil
or cl, 7
not bl
xor ax, -12492
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
bt di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
