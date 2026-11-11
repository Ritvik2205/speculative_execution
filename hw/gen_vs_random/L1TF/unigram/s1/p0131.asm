.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
add dl, 126 # instrumentation
setnb dl
lea ebx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 73
test rbx, rax
sbb bx, 70
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], 42
cmovnb rbx, rdx
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 4
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
sbb rdx, 98
setnbe cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
