.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edx, dil
test eax, edx
add sil, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdi]
cmp dil, dl
dec dil
lea eax, qword ptr [rcx + rsi + 30]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
xchg ax, bx
add al, 112 # instrumentation
setl dl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], ax
movzx ecx, dil
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
setnl dl
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
imul dil
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 1
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
