.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 16
or dx, 125
test al, bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
test bl, -9
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and ebx, 5
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
test al, -7
and sil, bl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
xor dil, 8
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
xor ax, -4010
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
