.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
dec dl
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
xor dx, -128
test ax, bx
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
imul eax
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
add bl, 104 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
setbe al
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 7
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 72
or sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
