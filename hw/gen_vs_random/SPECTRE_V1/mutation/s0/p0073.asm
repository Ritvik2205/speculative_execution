.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
add bx, -65
sub cl, -47
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
cmovo cx, si
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
setnz cl
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and esi, 77
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
cmovnbe rdi, rsi
xor ax, 913
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
