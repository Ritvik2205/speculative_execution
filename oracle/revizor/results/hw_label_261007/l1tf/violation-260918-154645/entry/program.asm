.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2 
add al, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax] 
lea cx, qword ptr [rax + rcx] 
xor cl, cl 
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx] 
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl 
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi] 
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax] 
add dl, 100 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx] 
neg edx 
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi] 
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al 
jmp .bb_0.1 
.bb_0.1:
add al, 71 # instrumentation
setp dl 
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi 
imul cl 
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 118 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
