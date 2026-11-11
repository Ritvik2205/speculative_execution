.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and cl, al
xor edx, 94
bt ecx, edi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
or al, 24
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
btr dx, dx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
cmovno rdi, rdi
xor rbx, rax
cmovnb rsi, rax
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
xor cl, 15
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
or dl, -31
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
