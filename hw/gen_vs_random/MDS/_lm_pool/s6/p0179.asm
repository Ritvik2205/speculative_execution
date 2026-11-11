.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -86
xor dil, -70
or al, -24
test esi, 1857129931
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
bt cx, si
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
xor cl, 15
xor ax, -6793
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
xor dil, -70
and al, cl
and al, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
