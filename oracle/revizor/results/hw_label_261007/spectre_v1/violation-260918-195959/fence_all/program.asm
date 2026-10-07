.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl 
lfence
or edx, 0b1000000000000000000000000000000 # instrumentation
lfence
bsf ebx, edx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
xor ecx, dword ptr [r14 + rbx] 
lfence
lea si, qword ptr [rdi + rax] 
lfence
add bx, -105 
lfence
cmp dil, sil 
lfence
js .bb_0.1 
jmp .exit_0 
.bb_0.1:
bts rbx, rax 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mul word ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sbb byte ptr [r14 + rbx], -58 
lfence
mul cl 
lfence
sub esi, -120 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovle rcx, qword ptr [r14 + rbx] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock btc qword ptr [r14 + rdi], 7 
lfence
mov al, cl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
btc qword ptr [r14 + rdi], 3 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
