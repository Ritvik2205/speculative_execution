.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
cmp ecx, -45
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
cwd
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -4
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
dec rdi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], -112
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
mov bl, bl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
lea edi, qword ptr [rcx + rbx]
lea rdi, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
movzx bx, sil
cmovns rsi, rsi
xor rsi, -124
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
