.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
setb al
add cl, cl
add bx, 97
jmp .bb_0.1
.bb_0.1:
add cl, 107 # instrumentation
cmovnl bx, bx
sbb al, cl
and si, dx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
and ecx, ebx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
add cl, 55 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
add al, 112 # instrumentation
cmovnle ecx, esi
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
