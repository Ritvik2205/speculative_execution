.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 70
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 37
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
add bl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
lea cx, qword ptr [rbx + rcx + 40]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
setz bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
adc edx, 83
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
add cl, 71 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
