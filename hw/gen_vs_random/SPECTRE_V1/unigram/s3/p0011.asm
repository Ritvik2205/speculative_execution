.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 90
and rcx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rcx]
cbw
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 96
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 89
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 85
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 18
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], esi
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 2
setle cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
