.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lfence
lock add dword ptr [r14 + rax], esi 
lfence
or rdx, 1 # instrumentation
lfence
add al, 122 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovo bx, word ptr [r14 + rcx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
imul rsi, qword ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
xor al, byte ptr [r14 + rax] 
lfence
add bl, bl 
lfence
test rax, -866236703 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rdi], dil 
lfence
jmp .bb_0.1 
.bb_0.1:
cmp rdi, rsi 
lfence
btc bx, dx 
lfence
adc rsi, rsi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rbx], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
lfence
and edx, 0b11 # instrumentation
lfence
idiv dword ptr [r14 + rbx] 
lfence
add cl, -38 # instrumentation
lfence
setbe al 
lfence
cmp di, -98 
lfence
setnle dl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
add eax, dword ptr [r14 + rbx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
