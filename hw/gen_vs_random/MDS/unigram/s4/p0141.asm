.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
or rcx, rbx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and cl, 123 # instrumentation
cmovo cx, si
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 99
or bl, 43
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
