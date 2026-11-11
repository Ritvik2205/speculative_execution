.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, al
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 20
and cx, bx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 85
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 94
and rsi, rax
cmovp edx, ebx
and dl, -108 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
or dl, cl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
cmovb rcx, rbx
or cx, -42
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
or rcx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
