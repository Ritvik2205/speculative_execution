.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -7
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
cmovz rcx, rdx
xor di, -116
xor edx, 24
bt eax, ebx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], dx
or di, 0b1000000000000000 # instrumentation
bsf di, di
cmovnp ecx, edx
cmovo bx, bx
cmovnle ecx, edi
jmp .bb_0.1
.bb_0.1:
xor bl, 2
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
cmovnb si, cx
cmovnb rdx, rsi
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
xor al, -15
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
