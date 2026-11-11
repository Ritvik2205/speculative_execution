.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
sub cl, 86
and rdi, 42
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
not cl
lea edx, qword ptr [rbx + rsi]
test al, sil
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and dx, 1
sub bx, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
