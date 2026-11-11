.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
xor al, 9
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
test al, -81
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
xor dil, -70
and dil, -39
and al, al
or al, dl
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 92
xor rax, -1499464454
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor dl, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
