.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 30
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
cmovnle cx, si
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdi
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ecx
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
setnb bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
xchg esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
