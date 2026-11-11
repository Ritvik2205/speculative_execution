.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 60
xor cl, 24
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and dl, -73
test cl, sil
not sil
jmp .bb_0.1
.bb_0.1:
btr bx, 74
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
test cl, dil
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
