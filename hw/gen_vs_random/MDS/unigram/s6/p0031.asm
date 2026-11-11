.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 77
cmovno rsi, rdi
and dil, 125
bts rdi, rbx
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and si, ax
cmovz rax, rbx
and bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
or rbx, rsi
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
cmovp bx, bx
bts eax, 222
test dil, -80
xor dl, 40
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], si
bt eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
