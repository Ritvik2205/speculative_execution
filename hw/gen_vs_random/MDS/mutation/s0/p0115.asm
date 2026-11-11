.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
xor edx, 94
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
btr dx, dx
or dl, -97
xor rbx, rax
and al, bl
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
cmovno rdi, rdi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
cmovnb rsi, rax
xor cl, 24
and cl, al
bt ecx, edi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
or al, 24
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
