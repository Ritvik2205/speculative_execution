.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rax, rdi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
test cl, 101
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
and si, -121
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and dl, dl
jmp .bb_0.1
.bb_0.1:
or rsi, 43
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
cmovp cx, si
and rsi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
test dil, -51
and bl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and sil, -69
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
