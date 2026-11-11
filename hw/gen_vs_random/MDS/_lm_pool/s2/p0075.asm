.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
xor rax, -1657511731
and dl, -73
and sil, bl
bts ax, 22
test al, sil
xor cl, bl
or al, -78
and dil, -39
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
xor dil, 124
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and dl, -73
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
jmp .bb_0.2
.bb_0.2:
test cl, 73
and rdx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
