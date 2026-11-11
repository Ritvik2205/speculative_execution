.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 74
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and sil, 74
test al, sil
and sil, sil
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
or al, dil
test edi, -1252846009
or ebx, -104
btr ax, dx
bt ax, 76
xor sil, cl
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
or sil, -49
bt bx, ax
xor sil, bl
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
