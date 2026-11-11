.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
cmp rsi, rdi
add sil, 36
imul ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
add cl, -110 # instrumentation
setbe dl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
cmovp ebx, ecx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], -42
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
