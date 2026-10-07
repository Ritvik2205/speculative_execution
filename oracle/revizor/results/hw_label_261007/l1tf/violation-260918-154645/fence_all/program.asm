.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lfence
lock btc dword ptr [r14 + rax], 2 
lfence
add al, -104 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
seto byte ptr [r14 + rax] 
lfence
lea cx, qword ptr [rax + rcx] 
lfence
xor cl, cl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnb dx, word ptr [r14 + rdx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rax], bl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovb eax, dword ptr [r14 + rdi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
imul ebx, dword ptr [r14 + rax] 
lfence
add dl, 100 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovle esi, dword ptr [r14 + rbx] 
lfence
neg edx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovp edi, dword ptr [r14 + rsi] 
lfence
or al, 0b1000 # instrumentation
lfence
and al, 0b11111000 # instrumentation
lfence
mov ax, 1 # instrumentation
lfence
idiv al 
lfence
jmp .bb_0.1 
.bb_0.1:
add al, 71 # instrumentation
lfence
setp dl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub dword ptr [r14 + rdx], edi 
lfence
imul cl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sbb qword ptr [r14 + rdi], 118 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
