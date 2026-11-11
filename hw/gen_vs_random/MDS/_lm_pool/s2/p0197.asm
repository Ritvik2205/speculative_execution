.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 62
or al, 16
or sil, -49
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
test cl, 101
test sil, -55
or al, -24
xor al, dil
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
