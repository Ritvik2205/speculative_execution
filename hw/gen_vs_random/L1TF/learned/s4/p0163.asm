.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
lea rbx, qword ptr [rcx + rax + 55452]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
cmovnb edi, edi
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 59
btc cx, si
lea rsi, qword ptr [rdx + rdi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
bt edx, 27
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 68
lea dx, qword ptr [rbx + rdi + 69]
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
add dl, -76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 79
adc bx, 26
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
