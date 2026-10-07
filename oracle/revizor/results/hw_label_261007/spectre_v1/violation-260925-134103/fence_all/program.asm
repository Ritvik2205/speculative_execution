.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx, rdi, -60 
lfence
sub esi, eax 
lfence
lea rsi, qword ptr [rcx] 
lfence
setnbe cl 
lfence
cmovs cx, dx 
lfence
jnbe .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lfence
lock sub word ptr [r14 + rdi], cx 
lfence
adc rdi, -75 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
adc dl, byte ptr [r14 + rdx] 
lfence
adc cl, -18 
lfence
lea di, qword ptr [rsi + rbx] 
lfence
dec bl 
lfence
cmp rdi, rdx 
lfence
imul bl 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock dec dword ptr [r14 + rdx] 
lfence
add bl, al 
lfence
lea esi, qword ptr [rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
