.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
or dl, 51
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
bt ecx, edi
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
cmovnb rsi, rax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
xor edx, 94
and al, bl
and cl, al
or al, 37
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
xor rbx, rax
cmovno rdi, rdi
btr dx, dx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
xor cl, 24
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
