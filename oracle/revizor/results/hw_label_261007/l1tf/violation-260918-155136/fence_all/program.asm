.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ax 
lfence
add bl, 91 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and dword ptr [r14 + rax], edi 
lfence
btr ecx, ebx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
xor rdi, qword ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock add byte ptr [r14 + rbx], dl 
lfence
and eax, ebx 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock xor word ptr [r14 + rbx], si 
lfence
imul ecx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rsi], 1 # instrumentation
lfence
and rdx, qword ptr [r14 + rsi] # instrumentation
lfence
shr rdx, 1 # instrumentation
lfence
div qword ptr [r14 + rsi] 
lfence
add cl, -110 # instrumentation
lfence
setbe dl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and si, 0b111 # instrumentation
lfence
btc word ptr [r14 + rcx], si 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rdi], rdi 
lfence
add rax, rcx 
lfence
mov al, bl 
lfence
cmovb esi, eax 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
