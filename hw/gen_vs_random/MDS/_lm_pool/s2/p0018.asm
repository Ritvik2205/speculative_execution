.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
xor al, -89
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor cx, -18
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and bl, dl
xor al, cl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor bx, 83
or al, sil
test dl, -95
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
