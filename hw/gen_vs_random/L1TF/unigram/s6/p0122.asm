.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rcx, rax
add al, 109 # instrumentation
adc si, 25
adc rax, rdi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
sbb bl, -88
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
xor bl, bl
not bx
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 61
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21177
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
