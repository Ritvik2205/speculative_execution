.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
btr edx, esi
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
xor dil, cl
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
xor al, 115
jmp .bb_0.1
.bb_0.1:
bt rax, 81
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rax], di
xor dl, 8
bts edx, 189
or al, bl
xor dl, al
and al, 106
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
xor ax, -16696
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
