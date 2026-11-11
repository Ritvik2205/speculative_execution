.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, dl
or si, si
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
lea ecx, qword ptr [rsi]
add al, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
or rax, -3
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
cmovnle rcx, rax
and rcx, -29
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
cmp bl, dl
mov bl, sil
and bl, 124
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
