.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
add al, 39 # instrumentation
lea ax, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], edi
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rax + rax + 25]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
lea esi, qword ptr [rsi + rax + 55]
lea rdi, qword ptr [rdx + rcx + 89]
lea rcx, qword ptr [rax + rdi + 10]
sbb bx, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
