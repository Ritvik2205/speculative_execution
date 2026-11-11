.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
or cl, 39
test dl, 27
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
add dil, 66
or al, 25
and rdx, 81
and al, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
bt eax, ecx
test dil, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
bt dx, ax
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or dl, sil
xor rax, -404206377
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
