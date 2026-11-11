.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edx, eax
test rbx, rax
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
cmovs di, si
inc rdx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], si
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 4
not rbx
btc di, bx
test edi, 56
add sil, -56 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
lea dx, qword ptr [rcx]
cmovnp bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
