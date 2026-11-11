.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, cx
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
xor edx, -13
not al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
or bl, bl
test bl, -9
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
test bl, -114
or al, -17
and rax, 1250429750
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
