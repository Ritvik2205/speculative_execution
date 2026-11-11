.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rbx, rsi
and rsi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 92
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
not edx
not bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
add dl, 10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 76
sub bl, 15
setp dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
