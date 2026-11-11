.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test bl, 65
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or al, -61
xor al, sil
test esi, 1857129931
bt ax, bx
jmp .bb_0.1
.bb_0.1:
test dl, cl
jmp .bb_0.2
.bb_0.2:
xor bl, dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 52
or al, -17
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
