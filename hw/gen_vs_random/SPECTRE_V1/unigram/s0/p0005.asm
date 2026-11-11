.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
sbb eax, 2098460225
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
xor cl, sil
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
inc rbx
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
add cl, 107 # instrumentation
lea eax, qword ptr [rdi + rdx]
lea rcx, qword ptr [rax + rcx]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
