.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 67
and bl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and bl, 63
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
or al, al
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and cl, -109 # instrumentation
cmovns rax, rax
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 78
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
btr rax, rax
test rsi, 879594088
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rax], si
bts dx, si
test bl, 106
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
btc eax, 19
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and al, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
