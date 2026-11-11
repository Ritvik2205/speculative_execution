.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg rsi
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
add al, 98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
add cl, -36
and bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 1
xor eax, 1034314125
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], si
test cl, -49
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
