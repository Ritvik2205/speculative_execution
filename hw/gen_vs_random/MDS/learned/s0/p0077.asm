.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -19
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
test bl, cl
btr ax, di
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
not bl
test cl, al
and dil, -39
btr eax, edi
btc si, 43
bt esi, ecx
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
