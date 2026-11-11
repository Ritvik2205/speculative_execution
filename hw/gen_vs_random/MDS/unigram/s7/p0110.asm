.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
and cl, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
or al, 37
btc dx, ax
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and dil, 66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
