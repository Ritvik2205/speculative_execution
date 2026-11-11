.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz di, bx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and sil, 11
add dil, 72
and rsi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rsi]
adc ax, -27488
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rbx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rbx, 16
lea di, qword ptr [rdi + rcx + 74]
sbb al, al
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
add dl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rcx]
setnz cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
