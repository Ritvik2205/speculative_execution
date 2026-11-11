.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 48 # instrumentation
cmovz rax, rdx
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and al, 20 # instrumentation
cmovp si, di
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rdi, rcx
or bl, sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
cmovs edi, ecx
test rcx, rbx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 73
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
cmovnbe di, dx
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 14
btr di, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
