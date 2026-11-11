.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, ebx
cmovle dx, dx
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 29
xor rdi, rdi
not bl
add dl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
or ax, 10
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
xchg dil, dl
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 77
btc eax, eax
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 15
btc si, ax
lea cx, qword ptr [rdx]
btc ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
