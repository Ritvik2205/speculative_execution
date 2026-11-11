.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
bt ecx, edi
and cl, al
or dl, -89
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
cmovnb rsi, rax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
xor edx, 94
and al, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
xor rbx, rax
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
or al, 74
cmovno rdi, rdi
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
btr dx, dx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
