.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 19
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
test eax, 424329527
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor sil, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 97
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
bt eax, 151
xor sil, -15
or al, cl
xor cl, dil
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
