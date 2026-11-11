.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rsi
and eax, -409673666
sbb cl, dl
add al, -60 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
cdq
add bl, 68
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx], 25
cmovnbe rbx, rdi
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
btr cx, di
lea rbx, qword ptr [rdx]
lea rsi, qword ptr [rax + rcx + 98]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
