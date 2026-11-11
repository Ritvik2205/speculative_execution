.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 32
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
setb dil
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
not bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and dl, bl
or ax, -10161
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
