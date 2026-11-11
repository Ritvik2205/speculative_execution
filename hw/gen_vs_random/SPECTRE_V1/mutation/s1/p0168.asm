.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs cx, dx
setnbe cl
imul rbx, rdi, -60
lea rsi, qword ptr [rcx]
sub esi, eax
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
adc rdi, -75
lea di, qword ptr [rsi + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
imul bl
lea esi, qword ptr [rdi]
add bl, al
cmp rdi, rdx
dec bl
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
adc cl, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
