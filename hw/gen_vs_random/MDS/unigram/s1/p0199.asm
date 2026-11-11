.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdx]
and bl, cl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
btr edi, ebx
and bl, 120 # instrumentation
cmovnle eax, eax
jmp .bb_0.1
.bb_0.1:
cmovns dx, si
or cx, -42
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
and dl, 23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and cl, -71
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 92
and si, -121
or dl, -8
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
or dil, -71
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
