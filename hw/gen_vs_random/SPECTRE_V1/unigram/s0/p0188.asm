.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
movsx dx, bl
and ax, dx
sbb dl, -23
lea rbx, qword ptr [rdi]
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
setnle cl
sub bl, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 97
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 90
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
cmovnb ax, di
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
