.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdi, 41
lea bx, qword ptr [rax + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], cx
inc bl
add bl, 112 # instrumentation
setnbe cl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 50
sbb bl, 44
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rcx]
cmovns rsi, rsi
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
cmovnbe rcx, rax
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
