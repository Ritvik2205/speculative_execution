.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
setnle al
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 112 # instrumentation
sbb edx, 15
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 51
cmovb esi, edi
and rsi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rsi]
and rcx, -29
xor dl, sil
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
