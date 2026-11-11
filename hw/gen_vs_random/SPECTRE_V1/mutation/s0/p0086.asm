.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub esi, eax
imul rbx, rdi, -60
lea rsi, qword ptr [rcx]
setnbe cl
cmovs cx, dx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
imul bl
cmp rdi, rdx
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
lea esi, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
dec bl
lea di, qword ptr [rsi + rbx]
add bl, al
adc cl, -18
adc rdi, -75
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
