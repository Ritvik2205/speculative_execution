.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, cl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
lea rax, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 111
add dl, 85 # instrumentation
cmovp bx, bx
add edx, 56
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
setbe cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
cmovs di, dx
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
add al, 68 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
cmovnbe rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
