.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
not bx
cmovs bx, di
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
test rax, -2052112368
and dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
or dil, 16
cmovbe edx, edx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
btr ax, di
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and bl, -82 # instrumentation
cmovz esi, ebx
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
and al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
