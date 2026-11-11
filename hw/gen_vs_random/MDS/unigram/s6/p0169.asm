.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
test rsi, 73
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
xor rbx, 89
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and al, 2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
bt rdi, 36
xor dl, 40
and rdx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdx]
cmovno bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
bts rbx, rdx
or si, -12
test dil, -80
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
