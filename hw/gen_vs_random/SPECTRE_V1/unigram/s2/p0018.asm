.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
btc esi, 58
btc eax, 85
lea bx, qword ptr [rdx]
cmovle rax, rbx
adc ax, -26452
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
add dl, -15 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rsi]
cmovp eax, edi
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
test rdi, 1238697264
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
