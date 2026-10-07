.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl 
lfence
lea rbx, qword ptr [rdi] 
lfence
cmp al, al 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
movzx ecx, byte ptr [r14 + rcx] 
lfence
lea cx, qword ptr [rcx + rdi + 51091] 
lfence
or bl, 61 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sbb dil, byte ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovl edx, dword ptr [r14 + rdx] 
lfence
cmovle cx, cx 
lfence
jmp .bb_0.1 
.bb_0.1:
add dl, -121 # instrumentation
lfence
cmovnp eax, esi 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock bts word ptr [r14 + rdi], 4 
lfence
imul rdi, rcx 
lfence
adc al, 36 
lfence
test rax, -991273825 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
setnb byte ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mov qword ptr [r14 + rax], 726281652 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
