.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, ecx
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
cmp bl, -114
add dl, dl
cmovle edx, ecx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 85
sbb al, -114
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
neg ebx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rax
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 43
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
add al, 105 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
