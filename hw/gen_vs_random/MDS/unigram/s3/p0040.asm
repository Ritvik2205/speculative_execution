.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl ecx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and dl, -33 # instrumentation
cmovns rax, rax
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
xor dil, dil
cmovnz cx, ax
and dil, 122 # instrumentation
cmovnb rdi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
and sil, 65
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
cmovl rax, rbx
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
bt edi, 254
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 68
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
bt esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
