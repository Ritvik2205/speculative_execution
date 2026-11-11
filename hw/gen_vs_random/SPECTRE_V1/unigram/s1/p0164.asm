.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
cmovbe edx, ecx
add cl, 78 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
adc ax, bx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bx, -65
sbb dl, dl
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
add al, -65
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
cmovno cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
