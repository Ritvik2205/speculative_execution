.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
or cl, 7
btr eax, edi
test dil, -80
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
bts edx, 189
or al, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and al, dil
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 69
not dil
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
btr eax, edi
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
