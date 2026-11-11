.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and dil, -62
test al, 66
and al, al
or dil, 12
jmp .bb_0.1
.bb_0.1:
and ecx, -104
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
test eax, 298249463
not dl
test sil, -55
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
