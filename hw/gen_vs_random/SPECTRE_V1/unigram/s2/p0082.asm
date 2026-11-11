.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dil
xor dil, -37
cmovnle rsi, rbx
add al, 123 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
setno dil
lea rbx, qword ptr [rbx]
sbb dil, -93
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
adc sil, -77
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add dl, -97 # instrumentation
sets sil
test ecx, 17
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
sub cl, al
cmovnb rax, rsi
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
