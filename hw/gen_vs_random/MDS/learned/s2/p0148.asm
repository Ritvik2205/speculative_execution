.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
btc dx, 38
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
xor al, 78
jmp .bb_0.3
.bb_0.3:
bts rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
cmovl di, dx
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
or sil, -8
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
cmovs eax, ebx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
bt si, dx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
test rax, 1732677821
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
