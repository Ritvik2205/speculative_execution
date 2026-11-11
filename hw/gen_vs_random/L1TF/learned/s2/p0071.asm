.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
cmovs edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
btr dx, ax
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 57
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 97
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
lea rsi, qword ptr [rsi]
sbb eax, eax
bt si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
