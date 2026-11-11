.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and dl, bl
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
add sil, 82 # instrumentation
adc sil, bl
mov ax, dx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
dec edi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 63
lea bx, qword ptr [rax + rdi + 75]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 5
xor al, dl
cmp si, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
