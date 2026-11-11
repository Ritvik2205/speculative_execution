.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
xor al, 34
test al, sil
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and al, bl
and bl, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
not bl
and al, cl
xor rcx, 71
btr edx, esi
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 54
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
or al, -58
xor rax, -404206377
xor rsi, -117
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
