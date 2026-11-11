.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
adc bl, al
add al, -109 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
cmp cl, bl
add al, -122 # instrumentation
cmovnbe ebx, ebx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
sbb sil, dil
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
sbb sil, bl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], sil
xor rbx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
