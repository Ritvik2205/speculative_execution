.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -61 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sbb dword ptr [r14 + rdx], edx 
lfence
bts rax, 140 
lfence
and al, -119 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
adc cx, word ptr [r14 + rsi] 
lfence
cmovo ebx, ebx 
lfence
dec rcx 
lfence
cbw  
lfence
jb .bb_0.1 
jmp .exit_0 
.bb_0.1:
add cl, 125 # instrumentation
lfence
adc cl, bl 
lfence
test al, 70 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
add byte ptr [r14 + rcx], 85 
lfence
lea bx, qword ptr [rcx + rbx] 
lfence
cmovno rbx, rdx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rbx], sil 
lfence
cwd  
lfence
movsx di, al 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rdx], dl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
