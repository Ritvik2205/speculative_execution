.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
and rax, -2058103810
not al
xor dil, 124
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and sil, dil
and al, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
test edx, -1561252782
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
xor rax, -345061362
or al, -75
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 6
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
