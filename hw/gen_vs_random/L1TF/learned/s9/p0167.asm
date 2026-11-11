.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
cmp sil, -11
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rsi, 44
sbb dl, dil
and al, al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
add bl, -21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 77
cmovnp si, bx
add ax, -10746
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
