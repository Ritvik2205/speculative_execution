.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
adc rsi, qword ptr [r14 + rax] 
lfence
add eax, -1265007362 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmp word ptr [r14 + rsi], -19 
lfence
adc cl, dl 
lfence
setb al 
lfence
movsx rdi, bl 
lfence
mul dil 
lfence
add cl, 29 # instrumentation
lfence
jp .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lfence
lock or word ptr [r14 + rax], -119 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rcx], sil 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rdi], dx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
movzx dx, byte ptr [r14 + rdx] 
lfence
or dx, 0b1000000000000000 # instrumentation
lfence
bsf di, dx 
lfence
add cl, 22 # instrumentation
lfence
cmovns rbx, rsi 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub rdx, qword ptr [r14 + rdx] 
lfence
lea ax, qword ptr [rsi + rdx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
setz byte ptr [r14 + rbx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
