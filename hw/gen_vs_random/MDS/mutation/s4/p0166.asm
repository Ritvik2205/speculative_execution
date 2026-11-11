.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -23
or bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
cmovnle rsi, rdi
test ebx, 245771113
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and bl, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and di, si
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -120
cmovs edx, ecx
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
or dl, dl
btr di, 199
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
