.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 36 # instrumentation
setnl cl
and ax, si
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
lea bx, qword ptr [rax + rsi + 25491]
cmovnbe edi, edx
cmp al, al
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
cmovnp rcx, rdx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -41
test edx, 1380346728
setnl cl
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
xor bl, bl
mov ax, bx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 44
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
cmovp ax, di
and bl, 46
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
