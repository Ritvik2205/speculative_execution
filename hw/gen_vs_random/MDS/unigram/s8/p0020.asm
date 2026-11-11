.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
or dl, 85
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
and cl, cl
cmovp cx, ax
jmp .bb_0.1
.bb_0.1:
test bx, cx
test dil, -80
cmovo dx, ax
and dl, 1 # instrumentation
cmovl bx, ax
and dil, -15 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
not sil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
xor eax, -127
and bx, 52
and al, -40 # instrumentation
cmovp eax, eax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
