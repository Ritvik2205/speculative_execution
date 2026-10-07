.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -31 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovp rdi, qword ptr [r14 + rdx] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock add qword ptr [r14 + rdi], rsi 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rdx], bl 
lfence
setle dl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
add qword ptr [r14 + rdx], rcx 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock btr qword ptr [r14 + rsi], 0 
lfence
or rcx, 1 # instrumentation
lfence
and rdx, rcx # instrumentation
lfence
shr rdx, 1 # instrumentation
lfence
div rcx 
lfence
add bl, 76 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnb cx, word ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovb rbx, qword ptr [r14 + rdx] 
lfence
setnl sil 
lfence
jmp .bb_0.1 
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
lfence
not byte ptr [r14 + rdx] 
lfence
and al, dl 
lfence
nop  
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
imul eax, dword ptr [r14 + rbx], 127 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sub ecx, dword ptr [r14 + rax] 
lfence
xchg dil, sil 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
