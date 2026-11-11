.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 68 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 111
add dl, 85 # instrumentation
cmovp bx, bx
sbb cl, cl
setbe cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
add bl, -9 # instrumentation
adc rax, 1544006018
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
add cl, -72 # instrumentation
cmovp edx, edx
test rbx, rdx
lea rdx, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
btr ax, di
btr edi, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
