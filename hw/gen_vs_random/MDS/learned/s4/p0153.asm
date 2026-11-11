.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or al, 24
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
or dl, -97
and eax, 33
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
or al, 30
and rax, 1250429750
test edi, -1252846009
xor cl, 15
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
add bl, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
