.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and bl, -104 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
cmovs ebx, ecx
and bl, cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 82
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
jmp .bb_0.1
.bb_0.1:
and bx, -21
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
xor bl, al
and cl, 85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], edi
and bl, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
cmovno dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
