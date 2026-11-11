.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
xor al, dl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
xor al, -19
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and dl, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor sil, dil
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
test rdx, 38
and dl, -73
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
