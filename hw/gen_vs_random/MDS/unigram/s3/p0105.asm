.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, bl
cmovns rsi, rdx
or si, 95
cmovp edx, eax
bts bx, 15
or dil, -57
and bl, 76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 75
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -120
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
bt si, cx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], eax
and dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
and al, 33 # instrumentation
cmovnle ebx, esi
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
