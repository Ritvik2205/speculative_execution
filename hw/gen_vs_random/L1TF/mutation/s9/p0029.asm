.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
setns al
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
lea rcx, qword ptr [rbx]
or dil, -113
btc di, bx
jmp .bb_0.1
.bb_0.1:
xor dl, 64
sub edi, 27
add rbx, 99
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rax, -109
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
sbb al, -14
sub al, -47
lea cx, qword ptr [rax + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
