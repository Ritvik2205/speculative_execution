.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
btc di, bx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
setns al
or dil, -113
lea rcx, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
xor dl, 19
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 1994547909
add rbx, 99
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
sub edi, 56
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
