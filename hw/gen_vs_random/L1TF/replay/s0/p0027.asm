.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
test ax, 13284
setnb bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
setl cl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
xor al, bl
imul dx, di, -95
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -82
test eax, esi
movzx ax, bl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
