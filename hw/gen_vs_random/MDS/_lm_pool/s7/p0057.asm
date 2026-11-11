.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, di
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor rax, -1499464454
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
xor bl, sil
test bl, -114
test rax, 1949278494
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
xor al, 55
or sil, -78
and sil, al
test bl, dil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or al, sil
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
