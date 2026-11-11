.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -75
and dl, al
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
jmp .bb_0.1
.bb_0.1:
xor cl, 98
test al, -81
or ax, 85
test eax, 343548072
or al, dl
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and dil, dil
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
bts rax, 77
xor sil, dl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
