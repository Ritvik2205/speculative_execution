.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
inc rcx
sub dil, -111
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, cl
movsx cx, al
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
lea ax, qword ptr [rsi]
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
