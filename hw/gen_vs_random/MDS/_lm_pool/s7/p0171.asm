.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
test dl, -85
or bl, cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and dl, -73
xor al, sil
xor cl, 98
and dl, -73
or al, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
not al
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and sil, sil
or al, 54
xor si, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
