.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 34
bts rcx, rdi
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
or al, -61
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or dl, -31
or al, 54
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
xor dl, al
btc edi, 230
bt ax, bx
not dil
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
