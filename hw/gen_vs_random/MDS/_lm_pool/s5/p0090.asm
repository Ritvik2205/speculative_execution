.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
xor cl, sil
xor al, bl
xor al, -19
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
or al, cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
or rdi, -11
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 35
or dil, dl
and ax, 19740
test al, dl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
