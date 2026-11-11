.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rsi
cmovl si, di
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 58
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
inc al
cmovnbe rbx, rcx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add dl, 125 # instrumentation
cmovbe rdi, rdi
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 6
cmovp rdi, rbx
not ax
add cl, 107 # instrumentation
cmovnl bx, bx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sub al, 26
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
