.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rsi]
test edx, -541774418
lea cx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
sub cl, bl
jmp .bb_0.1
.bb_0.1:
or edi, edx
bt rcx, 38
xor rax, 20
xchg dl, bl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
add dl, cl
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
lea bx, qword ptr [rdi]
or sil, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
