.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
btc di, bx
lea rcx, qword ptr [rbx]
setns al
or dil, -113
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
sub edi, 57
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
xor dl, 19
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 1994547909
add rbx, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
