.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
sub cl, -21
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
and esi, 77
add bx, -65
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
cmovo cx, si
setnz cl
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
xor ax, 913
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
cmovnbe rdi, rsi
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
