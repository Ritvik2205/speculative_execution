.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
and cl, -6
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor al, -26
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
xor al, bl
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
test edx, -1561252782
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
xor ax, -16696
test ecx, -1843375753
xor al, -4
test rbx, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
