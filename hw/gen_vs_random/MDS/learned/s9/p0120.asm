.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and ax, -122
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test bl, -14
and eax, 561041355
or cl, 39
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and ecx, -104
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
test ebx, -2015966884
or al, -22
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 45
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
