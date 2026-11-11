.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, bl
test edx, 1891691791
lea cx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
lea rcx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
jmp .bb_0.1
.bb_0.1:
or sil, -44
lea bx, qword ptr [rdi]
add dl, cl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
bt rcx, 38
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
or edi, edx
xchg dl, bl
xor rax, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
