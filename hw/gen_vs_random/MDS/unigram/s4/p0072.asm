.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rbx, rax
cmovo ax, ax
cmovo ax, bx
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and bl, -28 # instrumentation
cmovl rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and dil, 125
and dl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
and cl, 118 # instrumentation
cmovp ecx, esi
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test rax, rcx
cmovns di, ax
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
xor dl, al
xor si, 80
or si, 94
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
and dl, 84 # instrumentation
cmovl rdi, rax
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
