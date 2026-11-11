.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs cx, dx
sub esi, eax
setnbe cl
lea rsi, qword ptr [rcx]
imul rbx, rdi, -60
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
adc cl, -18
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
cmp rdi, rdx
lea esi, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
add bl, al
lea di, qword ptr [rsi + rbx]
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
imul bl
dec bl
adc rdi, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
