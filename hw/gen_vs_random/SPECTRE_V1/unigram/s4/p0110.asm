.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
cmovno dx, si
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], esi
or cl, -62
add rbx, 14
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -120
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 46
lea cx, qword ptr [rdx + rdi + 13]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
add al, -76 # instrumentation
cmovnbe dx, dx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
add bl, -15 # instrumentation
movzx cx, dil
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
