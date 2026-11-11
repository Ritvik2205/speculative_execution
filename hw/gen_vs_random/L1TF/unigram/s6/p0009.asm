.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle dil
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
imul rcx
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 38
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
xor ebx, -81
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
lea ax, qword ptr [rbx]
sbb bl, dl
btr edx, ecx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 97
test ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
