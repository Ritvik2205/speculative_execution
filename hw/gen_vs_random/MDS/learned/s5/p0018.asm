.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
xor cl, 55
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and dil, cl
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
xor dl, 40
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
test al, cl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
xor dl, bl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
