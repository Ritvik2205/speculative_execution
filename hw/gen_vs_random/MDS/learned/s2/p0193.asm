.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 678817098
xor cx, -18
and al, 82
and al, -103
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
or al, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
or bl, cl
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
test dl, -85
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
