.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt cx, 70
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
xor cl, dil
test dil, -67
cmovl edi, edi
or cx, 10
cmovnle esi, ecx
bt cx, si
and dl, -7
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rbx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
or al, al
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
btr rcx, 93
cmovs ecx, eax
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
cmovnl edi, eax
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
