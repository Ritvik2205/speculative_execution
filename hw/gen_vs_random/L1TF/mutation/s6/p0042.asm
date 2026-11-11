.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
setnb bl
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
test ax, 636
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xor al, bl
movzx ax, bl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
setl cl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 10
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
imul dx, di, -95
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
test eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
