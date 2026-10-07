.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 12618 
lea ax, qword ptr [rdi + rcx + 51483] 
sbb cl, dl 
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi] 
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx] 
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 117 
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax] 
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -90 
lfence
jbe .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi] 
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 54 
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx 
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi] 
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax] 
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi] 
sbb al, -61 
imul al 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
