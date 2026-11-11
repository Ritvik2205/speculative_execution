.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dil
cbw
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
bt ecx, ebx
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 79
js .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, bl
add al, -42 # instrumentation
lea edi, qword ptr [rax]
cmovnbe rax, rdx
or sil, sil
add esi, ebx
cmovb ax, ax
or al, al
mov dl, dl
cmp rbx, rax
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
