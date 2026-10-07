.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx 
lfence
sbb dl, dl 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock adc dword ptr [r14 + rdx], -29 
lfence
adc rax, -1877286258 
lfence
lea ecx, qword ptr [rcx] 
lfence
lea ax, qword ptr [rsi + rcx + 40317] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovo rdi, qword ptr [r14 + rax] 
lfence
bt di, di 
lfence
add al, 65 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
setnz byte ptr [r14 + rsi] 
lfence
cmovs ecx, ebx 
lfence
or rcx, -10 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnb di, word ptr [r14 + rdi] 
lfence
and bl, cl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sbb byte ptr [r14 + rdx], cl 
lfence
or esi, 1 # instrumentation
lfence
and edx, esi # instrumentation
lfence
shr edx, 1 # instrumentation
lfence
div esi 
lfence
xchg dil, cl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
