.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 31
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
xor rbx, 91
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
xor bl, al
sbb cl, -11
add al, 74
test ax, 636
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
sbb bl, cl
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
