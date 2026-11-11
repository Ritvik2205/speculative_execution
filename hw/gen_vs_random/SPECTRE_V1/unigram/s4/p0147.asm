.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
mov rdx, rsi
bt eax, ebx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -34
or dl, dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 78
cmovnb si, ax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
setnp sil
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
add dl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
