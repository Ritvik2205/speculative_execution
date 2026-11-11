.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsr bx, dx
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], 78
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rcx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 54
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
adc dl, dl
cmovnbe di, di
imul bl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], cl
cmp bl, al
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
