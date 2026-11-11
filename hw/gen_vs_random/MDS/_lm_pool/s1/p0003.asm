.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, ax
or dil, -71
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor al, 55
and cl, -6
and rax, -1701787862
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
jmp .bb_0.1
.bb_0.1:
test al, 127
xor al, -19
test dl, al
jmp .bb_0.2
.bb_0.2:
xor dx, 41
and cl, -71
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
or rcx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
