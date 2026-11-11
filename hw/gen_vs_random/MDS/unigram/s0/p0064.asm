.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, dil
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 34
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
cmovp ax, di
cmovnbe rcx, rcx
jmp .bb_0.1
.bb_0.1:
or cl, -36
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
bt edi, eax
and cl, -44 # instrumentation
cmovno rbx, rcx
cmovnz rbx, rcx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
or sil, -49
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
and cl, 91 # instrumentation
cmovle rax, rax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
bt rdx, rbx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
