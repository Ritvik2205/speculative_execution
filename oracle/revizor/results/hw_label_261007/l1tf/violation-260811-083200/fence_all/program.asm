.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -112 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
setns byte ptr [r14 + rdx] 
lfence
cmovl bx, si 
lfence
dec di 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
movsx rax, word ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
adc esi, dword ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
test word ptr [r14 + rdi], si 
lfence
jmp .bb_0.1 
.bb_0.1:
add sil, 18 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovs edx, dword ptr [r14 + rsi] 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock sbb qword ptr [r14 + rax], rcx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
add dword ptr [r14 + rdi], -70 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp byte ptr [r14 + rcx], dl 
lfence
setl bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
imul qword ptr [r14 + rbx] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock or dword ptr [r14 + rcx], -11 
lfence
adc ebx, edx 
lfence
cmovo ebx, eax 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
