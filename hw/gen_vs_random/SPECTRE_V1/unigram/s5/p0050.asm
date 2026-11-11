.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, cx
and edi, 98
cmovnb bx, bx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
test cl, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
lea rax, qword ptr [rax]
bts edi, 16
add bl, 70
setnb cl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 85
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
