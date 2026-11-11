.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and bx, 22
test bl, 65
and al, -114
xor si, 80
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
