.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
sub cl, -21
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
sbb dil, sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
or esi, -74
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
sbb cl, dl
add dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
