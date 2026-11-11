.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rdx, -98
cmovb esi, edi
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rax
neg bx
add al, -109
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnb rsi, rax
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 79
xor edi, 115
add dil, bl
not bx
and rax, rsi
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
setnle bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
