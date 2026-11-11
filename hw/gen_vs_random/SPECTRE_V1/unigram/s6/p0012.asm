.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rsi, 27
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 11
add dl, -96 # instrumentation
cmovo edx, edx
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
setns cl
not rax
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 55
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
sbb bl, cl
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
not ecx
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
lea rbx, qword ptr [rax + rdx + 86]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
