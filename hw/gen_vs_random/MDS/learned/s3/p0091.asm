.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -27
or al, -17
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor al, cl
and dil, -39
xor al, 115
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 98
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
xor dil, al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and al, -8
or ax, 16560
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
or bx, 27
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
and cl, bl
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
xor al, bl
and al, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
