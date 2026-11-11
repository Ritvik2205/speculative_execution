.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
cmovs eax, eax
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
cmp dx, di
and edx, ebx
xchg si, ax
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
cmovp ax, bx
inc si
neg si
xchg bx, cx
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
or si, -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
