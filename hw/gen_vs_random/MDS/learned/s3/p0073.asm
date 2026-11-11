.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle edx, edx
not al
and cl, -6
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
and eax, 561041355
cmovno rax, rdi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
test edx, -1561252782
and dx, 60
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
test eax, 1287331633
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
btr eax, esi
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
