.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
and dil, 38 # instrumentation
cmovbe ebx, edi
cmovnbe rdi, rbx
and dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
and al, -15 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and dl, 91 # instrumentation
cmovnle eax, eax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
or dil, bl
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
btc ax, 28
test bl, al
btr dx, ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], bx
cmovle eax, edx
xor bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
