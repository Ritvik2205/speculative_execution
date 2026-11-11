.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rbx, rdi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 90
xor rdi, 82
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc si, bx
setno dil
adc bl, 27
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
cmovo ecx, ebx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
add cl, 29 # instrumentation
setnb al
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 6791
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
