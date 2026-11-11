.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
xor al, -127
bt esi, ecx
lea ecx, qword ptr [rdx]
setl dil
btc ax, bx
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
movzx rsi, bl
xchg edx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
cmovp ax, dx
lea rax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
