.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns si, dx
and rdx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdx]
cmovbe bx, di
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
dec cx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
cmp di, 45
jmp .bb_0.1
.bb_0.1:
xchg rdx, rdx
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
lea cx, qword ptr [rdx + rbx]
and rdx, 88
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
