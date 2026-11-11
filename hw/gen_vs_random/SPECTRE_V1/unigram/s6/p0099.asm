.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -29 # instrumentation
add bl, -70 # instrumentation
setnp bl
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
lea eax, qword ptr [rdi + rax + 16]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 55
add esi, 68
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
cmovb bx, cx
sub cl, -21
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], -12722
and dx, 6
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
sbb bl, sil
imul rdx
cmovs rbx, rcx
lea ecx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
