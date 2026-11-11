.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
lea rbx, qword ptr [rax + rsi]
lea rbx, qword ptr [rcx + rdi]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
add dl, 32 # instrumentation
sbb cl, dl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
btr edi, 5
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
lea rdi, qword ptr [rsi + rdi + 33]
not sil
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 76
test sil, 112
test cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
