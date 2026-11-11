.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 85
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
not eax
test al, bl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
xor dil, -124
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 87
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
xor rcx, -2
and sil, -56
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
or al, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
