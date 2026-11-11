.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
and dl, 122 # instrumentation
cmovnb rdx, rcx
and bl, -55 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
and cl, -22 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
btc rsi, rcx
or edi, 29
xor rdi, rbx
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
bt rdx, rax
xor al, -15
and bx, -21
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rbx]
xor cl, 93
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
or cl, cl
cmovns si, cx
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
