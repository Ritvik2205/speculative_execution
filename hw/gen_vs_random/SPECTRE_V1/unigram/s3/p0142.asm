.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
lea rbx, qword ptr [rax + rdx]
test esi, 21
or dl, bl
btr dx, 2
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
bt edx, 37
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 80
cmovs cx, si
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
bts rbx, 140
lea rsi, qword ptr [rbx + rdi + 8]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
