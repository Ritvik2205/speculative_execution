.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
xor dil, bl
mov di, 13
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
add bx, 41
add al, 109 # instrumentation
adc ax, 19
add bl, -79 # instrumentation
cmovo di, cx
and cl, dl
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], -54
movsx rdx, dx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
