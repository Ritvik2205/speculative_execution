.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rdi, -60
sub esi, eax
lea rsi, qword ptr [rcx]
setnbe cl
cmovs cx, dx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
adc rdi, -75
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
adc cl, -18
lea di, qword ptr [rsi + rbx]
dec bl
mov cl, al
adc rdi, -75
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
