.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
test sil, -96
xor cl, al
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 36
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
test al, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
xor al, 8
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and ecx, -104
and ax, 19740
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
xor dil, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
