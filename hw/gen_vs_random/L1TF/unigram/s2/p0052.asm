.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
xor al, al
test edx, -541774418
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
cmovle rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
add al, 39 # instrumentation
cmovnb bx, ax
inc si
and rax, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rax]
and bl, 89
cmovb rbx, rcx
btc bx, ax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
