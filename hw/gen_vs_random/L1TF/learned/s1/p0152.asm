.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil
or rax, -263404965
add dl, -117 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
and cl, 90
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor bx, di
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and bl, dl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
sbb dl, cl
xor dl, bl
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
