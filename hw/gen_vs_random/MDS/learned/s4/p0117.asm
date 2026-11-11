.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
or bl, -125
or sil, cl
and sil, -9
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and bl, 68
test al, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
or dl, cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
test rax, 1207043993
and al, 106
xor cl, dl
bt ax, si
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
or sil, -78
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
