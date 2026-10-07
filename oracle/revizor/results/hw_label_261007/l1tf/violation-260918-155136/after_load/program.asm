.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ax 
add bl, 91 
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi 
lfence
btr ecx, ebx 
and rdi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl 
lfence
and eax, ebx 
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si 
lfence
imul ecx 
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
lfence
and rdx, qword ptr [r14 + rsi] # instrumentation
lfence
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi] 
lfence
add cl, -110 # instrumentation
setbe dl 
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si 
lfence
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi 
lfence
add rax, rcx 
mov al, bl 
cmovb esi, eax 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
