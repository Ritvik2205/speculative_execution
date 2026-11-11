.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
btc di, bx
lea rcx, qword ptr [rbx]
setns al
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
add rbx, 99
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
xor dl, 9
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
and rax, 1163013815
sub edi, 57
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
