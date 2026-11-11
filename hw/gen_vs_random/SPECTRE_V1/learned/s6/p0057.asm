.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dil
test bl, -8
add cl, -127
lea rsi, qword ptr [rdx + rcx + 57579]
cmp rsi, 53
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
add dl, 47
or eax, -126
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
and al, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
