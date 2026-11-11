.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rax
lea rax, qword ptr [rcx + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
xor ebx, -81
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
sub bx, 95
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
add dl, al
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
cmovnbe rsi, rax
and bl, 89
sub rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
