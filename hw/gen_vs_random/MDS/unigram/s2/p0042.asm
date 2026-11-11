.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, rbx
cmovp rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
or dx, 125
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
cmovb rdi, rdx
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
cmovle si, dx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
xor esi, ebx
or rsi, 20
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
test rdx, 65
not rax
cmovs ax, ax
and dl, 47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdx]
and dil, cl
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
