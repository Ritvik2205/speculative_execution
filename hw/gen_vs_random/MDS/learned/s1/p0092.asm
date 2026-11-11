.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
and al, -54
and cl, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
xor dl, dil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
and si, -121
and ax, -4410
and ecx, -104
test eax, 298249463
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
