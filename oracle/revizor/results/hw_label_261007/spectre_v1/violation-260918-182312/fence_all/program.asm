.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -6 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnb bx, word ptr [r14 + rdi] 
lfence
setnle al 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
xor sil, byte ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rdx], rdx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov rax, qword ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmp word ptr [r14 + rsi], cx 
lfence
jbe .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
lfence
and qword ptr [r14 + rdx], rdx 
lfence
inc dl 
lfence
or dl, cl 
lfence
lea bx, qword ptr [rcx + rbx] 
lfence
movsx dx, sil 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
add word ptr [r14 + rbx], -42 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp word ptr [r14 + rcx], dx 
lfence
mov cl, cl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
xor word ptr [r14 + rdx], -117 
lfence
lea ax, qword ptr [rcx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
