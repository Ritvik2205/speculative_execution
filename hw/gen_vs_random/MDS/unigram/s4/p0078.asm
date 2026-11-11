.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
or sil, -78
test cl, cl
cmovnbe ecx, eax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 24
test al, 91
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
cmovnz rsi, rbx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
cmovl rcx, rcx
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
cmovno rbx, rdi
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
test ebx, -2015966884
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
