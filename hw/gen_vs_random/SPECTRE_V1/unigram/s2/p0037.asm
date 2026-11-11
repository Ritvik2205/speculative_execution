.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, al
cmovnz si, cx
add dl, 47
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
cmovs ebx, ecx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
sbb al, 118
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 57
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
cwd
xor al, -89
cmovb ebx, edi
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
