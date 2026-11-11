.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and bx, 18
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
bt rsi, 4
test cl, 62
xor eax, 984871847
test al, cl
not dl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
