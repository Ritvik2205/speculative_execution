.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
or bl, al
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
xor rcx, -2
test dil, al
or al, dl
and dl, dl
btr rax, 56
test ecx, -1843375753
test rcx, -613256812
test ebx, -2015966884
and bl, 68
test rbx, 80
or dl, 51
test dil, 46
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
bts bx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
