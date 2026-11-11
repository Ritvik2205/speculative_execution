.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
xor dil, -37
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
setz sil
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rdi + rdx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 76
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 97
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rcx
test cl, -33
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
setz cl
adc cl, cl
setnb bl
add bx, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
