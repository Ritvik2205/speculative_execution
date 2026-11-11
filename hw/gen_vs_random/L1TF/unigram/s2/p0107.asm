.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rcx
cmovnbe di, bx
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
or dil, al
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
add cl, 68 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
xor si, -50
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
cmovno ax, dx
xor ax, 30996
sub dil, dil
xor eax, -885407671
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
