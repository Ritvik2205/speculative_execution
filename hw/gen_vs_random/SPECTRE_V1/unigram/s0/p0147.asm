.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, 85
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 46
lea edx, qword ptr [rdi]
cmp dl, dl
setno dil
btr rcx, rsi
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
add al, 32 # instrumentation
sbb cl, al
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rdi]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 95
mov rcx, 91
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 78
add bl, 26 # instrumentation
sbb cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
