.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
btr rbx, rsi
xor rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rax]
cmovs ax, ax
cmovno rdx, rdx
bt edx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
xor dil, al
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
or ax, -11837
test cl, cl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdi]
cmovle cx, si
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
