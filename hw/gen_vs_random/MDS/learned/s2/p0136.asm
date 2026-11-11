.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test rsi, 50
test rax, -2004802425
not al
xor ax, 31969
xor bl, al
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
xor cl, al
jmp .bb_0.1
.bb_0.1:
xor dil, dl
and dil, al
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
xor al, 99
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
