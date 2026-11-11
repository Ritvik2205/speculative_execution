.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and eax, -829294476
xor rbx, 89
and dil, bl
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
or sil, -49
or sil, sil
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 70
xor ax, 23633
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and cx, -8
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
