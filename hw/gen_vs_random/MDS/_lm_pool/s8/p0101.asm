.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
xor al, -4
xor dx, 43
and rdx, 85
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test dl, 48
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
not al
xor ax, -16696
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
xor dil, -5
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
