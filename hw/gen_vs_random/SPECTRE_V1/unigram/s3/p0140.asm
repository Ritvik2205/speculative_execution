.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
btr edi, 55
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
sub rdi, 46
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sets dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dil, 94
setns cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
dec rdx
cmovno eax, ecx
sets sil
add si, 90
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
