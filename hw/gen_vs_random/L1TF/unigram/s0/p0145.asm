.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
xor bl, 38
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
add dil, 104 # instrumentation
mov edi, 27
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
mul rcx
xchg rbx, rdi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add al, -63 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
setb bl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
btr esi, ebx
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
add dil, 88
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
cmovnz si, cx
sub bx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
