.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
xor rcx, -2
btr esi, eax
test rax, 337705873
not dl
test dil, cl
or dil, -41
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
xor sil, al
not cl
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
