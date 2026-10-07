.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -108 # instrumentation
lfence
sbb dl, 77 
lfence
sbb dl, dl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
setnl byte ptr [r14 + rdx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rax], bl 
lfence
or esi, 1 # instrumentation
lfence
and edx, esi # instrumentation
lfence
shr edx, 1 # instrumentation
lfence
div esi 
lfence
add dl, 20 # instrumentation
lfence
cmovnbe rbx, rdx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rdx], eax 
lfence
jp .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
lfence
and al, byte ptr [r14 + rdi] 
lfence
cmovb bx, bx 
lfence
cmovno esi, ecx 
lfence
or ecx, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr ebx, ecx 
lfence
add bl, -6 # instrumentation
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
xchg byte ptr [r14 + rdx], bl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovno ax, word ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
neg word ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and cx, 0b111 # instrumentation
lfence
btr word ptr [r14 + rcx], cx 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rcx], dil 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
