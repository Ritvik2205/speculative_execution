.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
xor sil, -126
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
test bl, dil
xor cl, 24
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
jmp .bb_0.3
.bb_0.3:
test dl, 27
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test al, -7
test rdi, 22
or sil, -78
xor al, dl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
test edx, -372470678
or dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
