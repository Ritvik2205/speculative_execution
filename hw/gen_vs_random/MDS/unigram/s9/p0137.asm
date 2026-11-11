.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rsi]
bt di, cx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
xor edi, 16
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
cmovl ebx, ebx
and dil, dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and cl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
or dl, al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
cmovnbe ebx, ecx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
