.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
sub al, sil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
movzx edx, cx
test dl, -7
jns .bb_0.1
jmp .exit_0
.bb_0.1:
imul edi
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
add bl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 29
mov bl, dl
cmp edi, 93
setns al
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
lea di, qword ptr [rdi + rax + 15575]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
