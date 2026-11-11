.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
and cl, -44 # instrumentation
cmovno rsi, rbx
cmovnl esi, edi
cmovle bx, ax
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
cmovl rax, rdx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
cmovo edx, esi
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
and bl, 15 # instrumentation
cmovb ax, cx
or eax, -696456144
or dil, dil
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
