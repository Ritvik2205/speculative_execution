.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, 113
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 95
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
add al, 121 # instrumentation
setnb al
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], -16
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 27
lea rcx, qword ptr [rdi]
add di, 50
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
add rsi, 22
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
bts ebx, 82
add bl, 93 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
