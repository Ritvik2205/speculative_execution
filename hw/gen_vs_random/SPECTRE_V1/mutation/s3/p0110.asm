.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub esi, eax
lea rsi, qword ptr [rcx]
imul rbx, rdi, -60
setnbe cl
cmovs cx, dx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rsi + rbx]
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
adc cl, -18
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
cmp rdi, rdx
lea esi, qword ptr [rdi]
dec bl
add bl, al
adc rdi, -75
imul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
