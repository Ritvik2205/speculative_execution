.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 92
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 52
setl bl
setl al
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rsi]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and sil, -90
test eax, ecx
cmp esi, -52
sbb al, 92
and rbx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
