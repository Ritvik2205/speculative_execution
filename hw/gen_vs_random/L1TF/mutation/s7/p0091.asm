.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rbx, rcx
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
sub al, bl
sbb al, bl
movzx rdi, dl
cmp dil, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
neg bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
lea ecx, qword ptr [rcx + rsi + 65505]
lea edi, qword ptr [rbx + rax + 42155]
mul rdi
and rbx, rax
jmp .bb_0.2
.bb_0.2:
inc dil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
test rdi, rsi
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
inc cl
and rdi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdi]
btr rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
xor dil, -42
cmovnl si, bx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
add cl, bl
mov esi, -1776760885
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
