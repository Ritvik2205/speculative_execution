.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setle dl
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
or al, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rcx]
and edx, 57
btc rbx, 84
cmovle ecx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
cmovnz ax, si
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 12
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
