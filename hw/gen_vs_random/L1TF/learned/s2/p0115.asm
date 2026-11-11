.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
cmp dl, 64
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
lea rdx, qword ptr [rsi]
xor bl, -6
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and cl, -109 # instrumentation
cmovns rdi, rdi
jmp .bb_0.1
.bb_0.1:
mov bl, dl
xchg dl, dil
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 74
lea edi, qword ptr [rdx]
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
