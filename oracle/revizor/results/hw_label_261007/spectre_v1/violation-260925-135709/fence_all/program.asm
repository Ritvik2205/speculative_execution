.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lfence
lock or qword ptr [r14 + rbx], 57 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
add byte ptr [r14 + rax], -128 
lfence
and al, dl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rcx], al 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
add byte ptr [r14 + rbx], bl 
lfence
adc al, cl 
lfence
jnb .bb_0.1 
jmp .exit_0 
.bb_0.1:
add al, 28 # instrumentation
lfence
setnz al 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
add qword ptr [r14 + rsi], 52 
lfence
dec dl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
add al, byte ptr [r14 + rcx] 
lfence
xor cx, di 
lfence
sub bl, cl 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock add dword ptr [r14 + rax], eax 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov word ptr [r14 + rsi], ax 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock or byte ptr [r14 + rdx], -72 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or rcx, qword ptr [r14 + rbx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
