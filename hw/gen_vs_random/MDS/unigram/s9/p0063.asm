.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
or al, bl
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and cl, 51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and si, -121
and sil, 89
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
cmovnbe ax, bx
xor cl, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
cmovno rcx, rax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and dl, -125 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
cmovnbe ax, dx
test eax, edx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
cmovbe ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
