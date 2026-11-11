.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
btr eax, ebx
or dil, bl
and eax, 461212071
test sil, -55
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
xor al, dil
or cl, cl
test dil, bl
and al, 82
xor bl, dl
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
