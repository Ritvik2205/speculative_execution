.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lfence
lfence
lfence
lfence
lfence
neg ecx 
sbb dl, dl 
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29 
adc rax, -1877286258 
lea ecx, qword ptr [rcx] 
lea ax, qword ptr [rsi + rcx + 40317] 
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax] 
bt di, di 
add al, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi] 
cmovs ecx, ebx 
or rcx, -10 
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi] 
and bl, cl 
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl 
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi 
xchg dil, cl 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
