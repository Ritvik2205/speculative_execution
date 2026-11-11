.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 24
or rdi, 68
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
imul edi, edi, 11
add al, -14 # instrumentation
lea cx, qword ptr [rbx + rdi]
lea rcx, qword ptr [rcx]
add rax, -704585563
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and cl, al
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea edx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
