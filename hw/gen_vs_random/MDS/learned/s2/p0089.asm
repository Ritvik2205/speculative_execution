.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -1005
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 27
and sil, sil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
test rbx, 7
xor ebx, 61
xor sil, -126
xor al, 99
xor al, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
