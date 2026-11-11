.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rbx, rcx
and dil, 102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
or sil, sil
or dil, -52
bt ebx, edi
and cl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
cmovnbe si, di
test bx, 34
test bx, 13
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 80
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 2
and ax, 15401
or dx, 39
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and dl, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
