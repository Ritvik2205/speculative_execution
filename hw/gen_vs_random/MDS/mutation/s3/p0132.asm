.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
cmovnb rsi, rax
bt ecx, edi
or dl, -97
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
xor rbx, rax
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
xor edx, -13
and cl, al
or al, -78
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
cmovno rdi, rdi
and al, bl
btr dx, dx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
xor cl, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
