.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
cmovnp bx, si
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
adc al, 80
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
xor al, 45
and rbx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rbx]
add bl, 37 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 16
setz dil
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
