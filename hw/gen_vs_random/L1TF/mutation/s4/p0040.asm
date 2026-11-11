.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ax
and rdi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
btr ecx, ebx
add rax, rcx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
cmovb esi, eax
imul ecx
mov al, bl
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
add bl, -93
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and eax, ebx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
add cl, -110 # instrumentation
setbe dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
