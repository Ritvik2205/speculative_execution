.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
xor di, 93
test cl, 91
or al, 25
or al, -22
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
xor sil, 110
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
or dl, -8
bt si, ax
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
test sil, dl
or sil, cl
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
