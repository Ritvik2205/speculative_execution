.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, bx
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
add bx, 46
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
sbb edi, edi
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor bl, dil
or cl, 105
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
cmovnb si, bx
setz bl
add ax, -10746
sbb al, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
