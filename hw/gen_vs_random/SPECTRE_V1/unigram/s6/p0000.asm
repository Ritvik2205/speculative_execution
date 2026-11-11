.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 48
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
and sil, cl
lea rcx, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], 99
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], 55
imul cx, dx, -88
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 30
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
