.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc esi, 31
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
test al, cl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 29
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 107 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
xor dl, 71
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rbx
imul eax
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
or rcx, 26
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
