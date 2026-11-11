.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
test edx, 1891691791
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
and bl, 89
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
setz cl
xor esi, 51
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx], 61
jmp .bb_0.1
.bb_0.1:
or cx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
cmovnbe rcx, rdi
sub dil, -70
xor cl, dl
add sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
