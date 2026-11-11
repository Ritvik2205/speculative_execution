.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and al, -8
test bl, -9
test sil, dil
and al, sil
and dil, al
and eax, -85386306
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
test sil, -96
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test eax, 424329527
or di, 35
cmovnz rdi, rcx
sbb al, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
