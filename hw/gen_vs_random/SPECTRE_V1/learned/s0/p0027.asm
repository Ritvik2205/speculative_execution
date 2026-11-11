.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rax + rdi + 64855]
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
imul bl
add dl, -42 # instrumentation
lea edi, qword ptr [rdx]
lea rcx, qword ptr [rdx]
cmovnbe rbx, rsi
and rdi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdi]
dec dl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
setnp cl
xor esi, esi
test eax, 82
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
test rax, -1704969603
test al, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
