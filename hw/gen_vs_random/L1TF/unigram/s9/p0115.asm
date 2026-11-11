.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rax + rbx + 22]
xor dil, -42
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 94
lea rdx, qword ptr [rcx + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
test ax, 13879
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edx
add bl, dil
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
or eax, ecx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 63
add bl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
mov bx, si
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
