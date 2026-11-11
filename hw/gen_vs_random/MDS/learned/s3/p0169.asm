.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
cmovnb rsi, rbx
btc dx, bx
or dil, cl
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 70
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
or ax, -14271
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and al, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
