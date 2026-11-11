.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, rcx
cmovl rcx, rcx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or al, al
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rcx], ax
test cl, dil
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
and al, 87
and dl, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
or edx, -1
cmovbe ax, si
cmovz dx, di
and al, -34 # instrumentation
cmovs rdi, rax
or esi, -110
bts rdx, rax
and rcx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rcx]
and dil, al
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
