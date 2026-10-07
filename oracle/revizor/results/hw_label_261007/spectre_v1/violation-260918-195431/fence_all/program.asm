.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 12618 
lfence
lea ax, qword ptr [rdi + rcx + 51483] 
lfence
sbb cl, dl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
setb byte ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovns eax, dword ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
imul ax, word ptr [r14 + rdi], 117 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sbb edi, dword ptr [r14 + rax] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock sbb byte ptr [r14 + rbx], -90 
lfence
jbe .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
lfence
sub rbx, qword ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rcx], 54 
lfence
or cx, 0b1000000000000000 # instrumentation
lfence
bsr ax, cx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdi], 1 # instrumentation
lfence
and edx, dword ptr [r14 + rdi] # instrumentation
lfence
shr edx, 1 # instrumentation
lfence
div dword ptr [r14 + rdi] 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock dec qword ptr [r14 + rax] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
add dl, byte ptr [r14 + rsi] 
lfence
sbb al, -61 
lfence
imul al 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
