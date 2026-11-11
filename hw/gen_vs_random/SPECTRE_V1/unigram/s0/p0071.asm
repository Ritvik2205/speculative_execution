.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
imul esi, esi, -106
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
lea esi, qword ptr [rbx + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
or rcx, 64
add cl, 72 # instrumentation
adc al, 117
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
cmovnle rbx, rdx
cmovs rdx, rax
imul ax, dx, 75
cmp dl, dl
bts rax, 12
cmovz eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
