.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
btr esi, edx
cmovnb di, di
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
xor bl, 2
test dl, 25
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and bl, 52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
or si, 0b1000000000000000 # instrumentation
bsf si, si
and dx, di
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
jmp .bb_0.1
.bb_0.1:
test rdi, 55
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 7
and dl, -49 # instrumentation
cmovno dx, di
cmovnl edx, ecx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ecx
btc bx, 179
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
and dil, -115 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
