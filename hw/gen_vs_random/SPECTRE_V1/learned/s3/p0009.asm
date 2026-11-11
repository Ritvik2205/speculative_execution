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
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], edx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ebx
dec bl
cmp rdi, rdx
lea edx, qword ptr [rax]
mov sil, 36
lea esi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
