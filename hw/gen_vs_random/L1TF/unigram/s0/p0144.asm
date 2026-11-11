.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
add cx, cx
add bl, 10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 87
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
cmp dl, sil
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
mul rax
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdi]
sub al, dil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
add edx, 56
add cl, 42 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
add dl, 127 # instrumentation
setnbe dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
