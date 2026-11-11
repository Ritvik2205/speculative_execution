.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
btc rbx, 118
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
bts bx, 3
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and bl, 53 # instrumentation
cmovnl rbx, rbx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
or sil, -49
bts di, cx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
btc di, 164
test rcx, -613256812
cmovnb rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
test rsi, 45
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
