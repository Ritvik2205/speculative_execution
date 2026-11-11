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
adc cl, -18
lea esi, qword ptr [rdi]
adc rdi, -75
add bl, al
cmp rdi, rdx
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
lea di, qword ptr [rsi + rbx]
dec bl
imul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
