.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, ebx
add al, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
setnle bl
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
add bl, 91
cmovl rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp eax, esi
cmovnl dx, ax
cmovl ax, dx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 95
add ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
