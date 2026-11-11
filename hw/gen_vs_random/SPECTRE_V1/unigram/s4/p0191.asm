.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwde
lea ax, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
btc edx, 96
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
adc sil, cl
lea rax, qword ptr [rdi + rdi + 10]
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
sub al, 10
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
add dl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
lea rbx, qword ptr [rcx + rbx + 51]
mov sil, cl
add rdx, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
