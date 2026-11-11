.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, 8
and sil, al
and dil, dil
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
jmp .bb_0.1
.bb_0.1:
test dil, -80
and al, 35
xor al, 9
xor bl, 67
xor rsi, -117
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
