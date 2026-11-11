.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 57
test bl, 65
xor dl, -43
jmp .bb_0.1
.bb_0.1:
test al, dl
xor al, 115
xor ebx, 22
xor al, cl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
jmp .bb_0.2
.bb_0.2:
xor dl, -43
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
test eax, -571234566
or sil, bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 76
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
jmp .bb_0.3
.bb_0.3:
or al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
