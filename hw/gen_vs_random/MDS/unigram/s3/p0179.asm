.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and dil, dil
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 60
btr edx, ebx
cmovb rbx, rbx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
or bl, 127
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
jmp .bb_0.1
.bb_0.1:
cmovnz si, bx
xor sil, -14
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rsi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
xor dl, -43
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
or al, 24
cmovl rdx, rdx
and dl, -1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
