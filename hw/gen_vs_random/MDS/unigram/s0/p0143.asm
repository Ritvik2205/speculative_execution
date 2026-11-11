.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
test esi, edx
or edx, -1
bts di, 37
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 38
and al, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
cmovle ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
cmovnp eax, edx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
or dl, -21
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
xor bl, sil
test esi, 1857129931
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
