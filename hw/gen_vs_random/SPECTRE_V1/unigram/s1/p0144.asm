.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, dil
mov dil, cl
setno al
sets al
sub esi, -120
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
xor rcx, 13
lea ax, qword ptr [rdx + rbx + 81]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 76
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdx
adc dil, 45
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 97
sub bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
