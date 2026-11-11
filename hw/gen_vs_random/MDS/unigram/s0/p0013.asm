.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -71
cmovnle dx, dx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 26
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
cmovo cx, dx
cmovbe rcx, rax
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
test al, -81
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
or al, -75
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 68
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
