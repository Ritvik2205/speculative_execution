.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, 123
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rbx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 83
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 79
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and bl, bl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
