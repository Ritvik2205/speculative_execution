.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
sub al, bl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
test al, -126
adc dl, sil
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rax, 2134929425
cmp al, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
