.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
cmovl bx, si
dec di
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
lea rbx, qword ptr [rdx + rbx + 29]
movzx edx, al
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rdi, -60
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdx]
setnz dil
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
cmovp ebx, edi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
mov rsi, 86
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
