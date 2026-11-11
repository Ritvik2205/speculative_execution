.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 10
and dl, -126 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
test al, -7
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and dl, 18 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
cmovbe ebx, edx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
or edx, -1
and bl, -28 # instrumentation
cmovl rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
