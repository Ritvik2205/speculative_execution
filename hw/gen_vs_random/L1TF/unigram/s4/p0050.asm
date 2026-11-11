.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
test dl, -37
and rcx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and dl, 59
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 89
lea edx, qword ptr [rbx]
sub edi, edx
xor dil, dl
test bx, cx
add sil, -110 # instrumentation
btr si, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
