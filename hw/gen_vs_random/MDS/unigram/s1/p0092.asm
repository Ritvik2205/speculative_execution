.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ecx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
or dl, cl
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and cl, -109 # instrumentation
cmovns rbx, rbx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
cmovo esi, ebx
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
bt rbx, 40
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
and rax, -1909598591
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and dil, 102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
