.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
or al, 30
or cl, 119
xor bl, cl
jmp .bb_0.1
.bb_0.1:
or ebx, eax
jmp .bb_0.2
.bb_0.2:
xor dil, -124
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor dil, 81
xor al, 55
and sil, al
test ebx, -2015966884
xor dil, sil
xor rax, -843636050
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
