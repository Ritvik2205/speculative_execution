.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
movzx dx, al
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
setbe bl
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 62
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
movsx rcx, si
mul dl
add cl, -53 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rsi
add rax, 6
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
