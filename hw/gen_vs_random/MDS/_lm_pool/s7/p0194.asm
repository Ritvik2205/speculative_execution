.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -10351
bts rax, rcx
xor rbx, 89
test al, -81
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
xor sil, -46
xor dil, dl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
and dl, -73
or al, cl
and cl, -6
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
not dl
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
