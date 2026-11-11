.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
bt rdx, 23
xor al, dl
and dl, -59 # instrumentation
cmovbe bx, ax
and dl, 16 # instrumentation
cmovle ecx, ecx
not bl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
not cl
and cl, -111
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
test rax, 1978892575
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and al, -97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
