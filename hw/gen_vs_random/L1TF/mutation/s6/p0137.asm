.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 85 # instrumentation
cmovp bx, bx
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 111
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
cmovnbe rsi, rdx
setbe cl
sbb cl, cl
lea rax, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
cmovs di, dx
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
add edx, 56
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
add al, 68 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
