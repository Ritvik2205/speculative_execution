.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sbb si, word ptr [r14 + rdx] 
lfence
cmp ecx, -45 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
setnl byte ptr [r14 + rdx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnbe esi, dword ptr [r14 + rcx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
dec dword ptr [r14 + rsi] 
lfence
cwd  
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rdi], -4 
lfence
jp .bb_0.1 
jmp .exit_0 
.bb_0.1:
add dl, -26 # instrumentation
lfence
adc ecx, edx 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock add qword ptr [r14 + rcx], rdi 
lfence
cmp al, al 
lfence
and bl, -73 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rsi], 93 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rbx], cl 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock or word ptr [r14 + rax], 102 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sub edx, dword ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
movzx edx, word ptr [r14 + rsi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
