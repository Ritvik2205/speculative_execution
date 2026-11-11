.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
cmovnb ax, bx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and bl, bl
xor dil, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and cl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
test cl, cl
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
