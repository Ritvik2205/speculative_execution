.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz ax, cx
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
lea ecx, qword ptr [rax]
cmp ecx, 100
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
xor dil, sil
loop .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rsi]
imul si, di, 80
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edi
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
mov al, bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
