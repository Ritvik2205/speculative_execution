.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovo bx, ax
add bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
add al, 31
sub dl, sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 43
cmovnbe si, cx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], bx
setno al
adc bl, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
