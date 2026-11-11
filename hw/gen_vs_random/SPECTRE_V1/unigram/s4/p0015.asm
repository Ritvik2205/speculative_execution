.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
cmovnbe di, si
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
test ecx, edi
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 5
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
setnz dl
sbb esi, -4
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
and dl, 4
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
