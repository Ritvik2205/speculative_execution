.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
xor edx, 17
or dl, -89
cmovnb rsi, rax
xor rbx, rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and cl, al
and al, bl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
btr dx, dx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
bt ecx, edi
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
xor cl, 24
or al, -24
cmovno rdi, rdi
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
