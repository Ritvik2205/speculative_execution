.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and esi, 77
setnz cl
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
add bx, -65
sub cl, -47
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
cmovo cx, si
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea edx, qword ptr [rdx + rdi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add dl, 95 # instrumentation
cmovnb rbx, rsi
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 90
and esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
