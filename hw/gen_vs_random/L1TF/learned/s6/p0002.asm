.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -104 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and bl, bl
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb sil, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
test eax, 645518295
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
test eax, -2032743474
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
