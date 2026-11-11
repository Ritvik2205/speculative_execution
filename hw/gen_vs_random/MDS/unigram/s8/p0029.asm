.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
test rsi, 53
xor rcx, 71
cmovo edx, edi
and dx, 60
and dl, -73
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rbx]
and dl, al
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and edi, 23
and dl, 57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
