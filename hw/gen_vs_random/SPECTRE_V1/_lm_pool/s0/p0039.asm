.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 16
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
sbb bl, bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
