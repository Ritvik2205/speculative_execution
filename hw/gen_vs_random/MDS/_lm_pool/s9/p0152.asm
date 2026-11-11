.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
not sil
test edi, -1252846009
test edx, -1561252782
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
test dil, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
test al, 91
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor rax, -91
btr cx, si
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
