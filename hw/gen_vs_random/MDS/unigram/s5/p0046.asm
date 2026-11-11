.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdi, rax
or si, 0b1000000000000000 # instrumentation
bsf bx, si
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
and dl, 84 # instrumentation
cmovl rdx, rcx
btr esi, esi
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
cmovnle rax, rdi
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
btr ebx, eax
cmovnb rbx, rdi
xor bl, -27
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
test dl, 27
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
or ecx, 96
and rdi, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdi]
and cl, -49 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
