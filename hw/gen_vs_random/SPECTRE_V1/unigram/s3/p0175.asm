.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bx, cx
lea bx, qword ptr [rdx]
btc rdx, 36
test al, 70
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
add dl, -124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
lea ax, qword ptr [rdi + rsi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
sub cl, 77
xor rdx, 61
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
