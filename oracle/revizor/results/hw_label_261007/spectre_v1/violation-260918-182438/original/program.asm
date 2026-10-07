.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi] 
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax 
lea rcx, qword ptr [rsi] 
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi] 
sub rax, -132886581 
xchg rsi, rdx 
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx] 
add cl, -5 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl 
loopne .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rsi 
and rsi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rsi] 
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], -103 
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl 
xor dil, 77 
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rdi 
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
