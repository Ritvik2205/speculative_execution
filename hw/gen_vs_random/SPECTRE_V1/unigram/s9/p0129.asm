.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rdx, 3189408690989687296
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
setbe cl
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 1
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
lea dx, qword ptr [rbx + rcx]
setp dil
lea esi, qword ptr [rcx + rcx + 83]
imul eax
test edi, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
