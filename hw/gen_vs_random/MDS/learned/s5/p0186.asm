.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
bts dx, 50
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
and edi, 23
xor rax, -345061362
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
bt ax, si
test sil, -55
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
