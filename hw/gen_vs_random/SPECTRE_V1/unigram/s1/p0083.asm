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
and rbx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rbx]
btr edi, 63
cwd
sbb rdx, 15
xchg dl, dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 4
sub rbx, -128
mov sil, sil
and rcx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rcx]
lea rax, qword ptr [rdi + rbx + 4]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
add ax, -16969
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
