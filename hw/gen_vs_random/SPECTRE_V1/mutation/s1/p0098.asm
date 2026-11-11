.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub esi, eax
setnbe cl
lea rsi, qword ptr [rcx]
cmovs cx, dx
imul rbx, rdi, -60
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rsi + rbx]
imul bl
adc rdi, -75
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
cmp rdi, rdx
adc cl, -18
add bl, al
lea esi, qword ptr [rdi]
dec bl
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
