.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rbx], dx
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and dl, -59 # instrumentation
cmovbe si, ax
test rsi, rax
and dl, 72 # instrumentation
cmovz eax, ebx
cmovno rdx, rax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 88
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 83
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
or rax, -1561934807
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and bl, 56 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
