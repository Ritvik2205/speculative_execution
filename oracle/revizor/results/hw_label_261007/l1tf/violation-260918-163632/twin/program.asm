.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
lfence
cmovp rdi, qword ptr [r14 + rdx] 
and rdi, 0b1111111111000 # instrumentation
lfence
lock add qword ptr [r14 + rdi], rsi 
and rdx, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rdx], bl 
setle dl 
and rdx, 0b1111111111111 # instrumentation
lfence
add qword ptr [r14 + rdx], rcx 
and rsi, 0b1111111111000 # instrumentation
lfence
lock btr qword ptr [r14 + rsi], 0 
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx 
add bl, 76 # instrumentation
and rax, 0b1111111111111 # instrumentation
lfence
cmovnb cx, word ptr [r14 + rax] 
and rdx, 0b1111111111111 # instrumentation
lfence
cmovb rbx, qword ptr [r14 + rdx] 
setnl sil 
jmp .bb_0.1 
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
lfence
not byte ptr [r14 + rdx] 
and al, dl 
nop  
and rbx, 0b1111111111111 # instrumentation
lfence
imul eax, dword ptr [r14 + rbx], 127 
and rax, 0b1111111111111 # instrumentation
lfence
sub ecx, dword ptr [r14 + rax] 
xchg dil, sil 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
