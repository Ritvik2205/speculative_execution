.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
cmp cl, cl
setno sil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rbx
xchg rax, rdx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
lea rax, qword ptr [rsi + rax + 67]
imul edi, ecx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
bt esi, edi
btr cx, 35
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rbx]
cmp rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
