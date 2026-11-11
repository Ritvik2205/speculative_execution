.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 55
test cl, 54
btr dx, ax
or al, 37
bt dx, cx
xor bl, dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
xor bl, dil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and ecx, -104
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
