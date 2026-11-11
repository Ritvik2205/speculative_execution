.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
add al, dil
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
setnp al
lea edi, qword ptr [rbx + rdi + 9]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and edi, edi
add bl, -126 # instrumentation
cwd
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
cmovnz rsi, rcx
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
sbb ecx, 52
add dl, -73 # instrumentation
btr ax, dx
imul edi, edx
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
