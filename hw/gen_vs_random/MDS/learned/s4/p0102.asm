.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
bt si, cx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and bl, -3 # instrumentation
cmovnb bx, dx
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
cmovb ebx, esi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rax
and bl, 18
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 73
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
