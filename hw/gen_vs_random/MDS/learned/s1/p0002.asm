.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
xor al, -19
and al, 106
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
test si, ax
or dl, -89
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
test eax, -675944960
and ax, 19224
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
xor al, -4
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
xor al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
