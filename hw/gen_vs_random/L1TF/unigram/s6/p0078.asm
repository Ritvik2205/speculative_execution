.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp esi, -52
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
cmovle bx, ax
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], cx
sub bx, 17
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
mov dil, dil
lea bx, qword ptr [rcx + rbx + 62]
or ebx, 56
jmp .bb_0.1
.bb_0.1:
add dl, 22
dec si
cmovle rdx, rax
lea rbx, qword ptr [rax]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rax
dec edx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
