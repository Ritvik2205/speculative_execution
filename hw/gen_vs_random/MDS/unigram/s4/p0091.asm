.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -119
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or di, 0b1000000000000000 # instrumentation
bsf di, di
and sil, -115 # instrumentation
cmovl dx, si
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 99
xor cl, 93
cmovnbe cx, ax
xor cx, ax
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 1
and dl, 122 # instrumentation
cmovnbe edx, ecx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 43
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 23
cmovs edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
cmovnle ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
