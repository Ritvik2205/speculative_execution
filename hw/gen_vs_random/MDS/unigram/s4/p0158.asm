.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
not eax
cmovbe ecx, ecx
xor cl, sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
cmovle dx, cx
and cl, 125 # instrumentation
cmovo ax, dx
test dil, cl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and al, 70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
or bl, 127
cmovnbe edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
