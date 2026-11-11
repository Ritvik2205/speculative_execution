.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
xchg ecx, edi
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
test bl, 46
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 31
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
lea si, qword ptr [rsi + rbx]
dec al
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
lea eax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
