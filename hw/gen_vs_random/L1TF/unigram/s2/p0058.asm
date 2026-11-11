.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
xor rcx, rax
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 33
and rdx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdx]
mul rax
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
imul edi, edi, 65
lea ebx, qword ptr [rdx]
inc edx
imul si, cx, 27
add dl, 30 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rbx]
xor cl, dl
lea dx, qword ptr [rbx + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
