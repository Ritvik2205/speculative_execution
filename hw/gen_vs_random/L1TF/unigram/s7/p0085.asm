.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
add dl, al
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
bts ecx, 164
inc rdi
add dl, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
test rdx, rbx
add dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
lea ax, qword ptr [rdx + rcx]
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 33
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
