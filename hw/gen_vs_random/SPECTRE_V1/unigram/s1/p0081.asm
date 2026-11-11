.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
cmp cl, bl
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
add cl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
cmovl bx, di
lea si, qword ptr [rbx + rsi]
add al, 19 # instrumentation
setnz dil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
add rcx, 23
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and sil, al
mul bl
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
