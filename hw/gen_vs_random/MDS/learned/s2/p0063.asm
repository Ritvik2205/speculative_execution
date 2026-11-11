.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
xor al, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
test rbx, 34
and ax, -122
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
xor bx, 6
or ax, -20176
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
