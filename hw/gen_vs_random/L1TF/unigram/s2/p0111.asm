.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 1447934463
add ebx, ecx
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 92
setnbe bl
xor bx, 64
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], 94
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 32
and edx, 37
xor sil, dl
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
neg dx
movsx bx, sil
nop
xor dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
