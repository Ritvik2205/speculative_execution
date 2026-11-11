.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
sub al, bl
setnp al
dec cl
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
lea eax, qword ptr [rcx + rdx + 66]
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
cmovz ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
