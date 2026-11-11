.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setle cl
btc edx, edx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
neg rcx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -79
or rsi, 80
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
add bl, 110 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
add al, -117 # instrumentation
lea rbx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
btc si, 87
add bl, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
