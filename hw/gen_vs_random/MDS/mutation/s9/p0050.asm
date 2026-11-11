.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 98
and cl, al
cmovno rdi, rdi
and al, bl
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
xor edx, 17
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
or dl, -89
bt ecx, edi
xor rbx, rax
cmovnb rsi, rax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
or al, 74
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
btr dx, dx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
