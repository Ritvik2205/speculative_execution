.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rdi, -60
sub esi, eax
setnbe cl
cmovs cx, dx
lea rsi, qword ptr [rcx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
lea di, qword ptr [rsi + rbx]
add bl, al
adc rdi, -75
adc cl, -18
dec bl
cmp rdi, rdx
imul bl
lea esi, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
