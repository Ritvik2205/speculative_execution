.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
or dl, sil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or al, 16
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
or cl, 7
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 21
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
test dl, 27
bt bx, di
or dl, 85
btc di, 233
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
