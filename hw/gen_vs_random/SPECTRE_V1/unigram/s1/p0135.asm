.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
adc al, sil
and dl, dl
lea cx, qword ptr [rcx + rax]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 30
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rsi]
setnl al
lea cx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
cmp cl, 3
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
dec rcx
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
movzx cx, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
