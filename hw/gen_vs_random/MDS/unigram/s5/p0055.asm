.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -51
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
cmovo si, ax
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 24
test ax, -11534
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
test al, sil
cmovns dx, di
test si, ax
btc rsi, 80
and rdi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdi]
cmovbe edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and dl, 84 # instrumentation
cmovle ax, bx
or eax, -900576213
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
and dl, 84 # instrumentation
cmovl rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
