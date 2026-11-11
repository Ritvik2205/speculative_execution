.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
test ax, 7679
setnb bl
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
imul dx, di, -95
movzx ax, bl
setl cl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 10
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
test eax, esi
xor al, bl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
