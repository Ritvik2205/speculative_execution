.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -8
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
xor edx, -13
xor cl, 15
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
or al, -22
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and al, bl
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and cl, al
btr dx, dx
cmovnb rsi, rax
xor rbx, rax
bt ecx, edi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
cmovno rdi, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
