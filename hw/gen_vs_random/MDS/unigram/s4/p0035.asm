.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 92
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
bt ebx, 57
xor eax, 571592471
bts bx, 3
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
or si, -12
not rsi
jmp .bb_0.1
.bb_0.1:
test si, 26
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
xor cl, cl
and cx, cx
and al, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
