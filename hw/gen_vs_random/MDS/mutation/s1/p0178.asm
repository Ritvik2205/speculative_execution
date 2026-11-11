.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -49 # instrumentation
cmovno cx, bx
cmovnb dx, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
cmovl rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
cmovb rbx, rdi
and dil, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and dl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
test ebx, 245771113
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -120
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 2
and bl, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
or dl, dl
cmovnle rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
