.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and dl, -73
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
or dil, -71
xor dl, 34
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], cx
xor cl, 15
jmp .bb_0.2
.bb_0.2:
or al, bl
and dl, -73
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
or cl, 7
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
xor al, -26
and al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
