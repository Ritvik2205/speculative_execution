.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
sbb eax, -1165635662
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
cmp al, -119
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], edx
add dil, al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
xor al, dil
and al, dil
lea dx, qword ptr [rcx + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
