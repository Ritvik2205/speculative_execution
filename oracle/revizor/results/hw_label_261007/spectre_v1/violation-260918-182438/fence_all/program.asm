.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
lfence
inc word ptr [r14 + rdi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rdi], eax 
lfence
lea rcx, qword ptr [rsi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
imul byte ptr [r14 + rdi] 
lfence
sub rax, -132886581 
lfence
xchg rsi, rdx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rbx], 1 # instrumentation
lfence
mov ax, 1 # instrumentation
lfence
div byte ptr [r14 + rbx] 
lfence
add cl, -5 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnb dx, word ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rax], bl 
lfence
loopne .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lfence
lock or qword ptr [r14 + rsi], rsi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sbb rbx, qword ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rdx], -103 
lfence
or bl, 1 # instrumentation
lfence
mov ax, 1 # instrumentation
lfence
div bl 
lfence
xor dil, 77 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock sbb qword ptr [r14 + rcx], rdi 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mul dword ptr [r14 + rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
