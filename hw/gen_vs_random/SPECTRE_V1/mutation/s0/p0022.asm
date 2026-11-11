.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rcx]
cmovs cx, dx
imul rbx, rdi, -60
sub esi, eax
setnbe cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, al
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
adc rdi, -75
adc cl, -18
imul bl
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
dec bl
lea esi, qword ptr [rdi]
lea di, qword ptr [rsi + rbx]
cmp rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
