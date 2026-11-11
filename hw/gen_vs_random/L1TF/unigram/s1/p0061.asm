.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -21 # instrumentation
mov ebx, eax
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 31
test dil, 100
setnbe al
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 25
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 98
not dil
add bl, 110 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
lea rax, qword ptr [rbx + rdx + 34]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
cmovno edx, edx
add dl, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
