.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
and cl, al
cmovnb rsi, rax
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
or dl, 85
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
cmovno rdi, rdi
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and al, bl
bt ecx, edi
or al, 24
xor edx, 17
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
btr dx, dx
xor rbx, rax
xor cl, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
