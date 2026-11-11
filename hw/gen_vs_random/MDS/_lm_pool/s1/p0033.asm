.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
xor al, bl
and eax, 943733866
or dil, 12
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
or dil, -78
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
xor cl, dl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
test eax, 343548072
test al, 127
or dil, -76
and al, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
