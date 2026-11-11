.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
or cl, al
and sil, -69
xor al, 34
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
test al, sil
and dx, 60
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
test eax, 424329527
xor dl, bl
or al, 54
test dl, sil
xor cl, dil
and al, -54
sbb cl, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
