.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -127 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and bl, 121 # instrumentation
bt rax, 59
not al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
cmovno rdx, rdi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and rdi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
cmovz bx, ax
or dil, -41
not sil
cmovnz rsi, rax
cmovnle rbx, rdi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
bts cx, 177
and dl, 8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
