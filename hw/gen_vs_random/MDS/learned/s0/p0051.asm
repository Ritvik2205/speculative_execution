.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
bt dx, 162
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and eax, 461212071
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
not dl
test al, 66
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and al, 75
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
