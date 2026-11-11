.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
cmovnb rsi, rax
and cl, al
or dl, -97
xor edx, -13
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
or al, -61
cmovno rdi, rdi
bt ecx, edi
xor cl, 55
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
xor rbx, rax
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
btr dx, dx
and al, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
