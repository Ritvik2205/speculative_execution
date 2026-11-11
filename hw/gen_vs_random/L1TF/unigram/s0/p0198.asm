.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rbx, 37
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
cmp bl, bl
sub bl, 15
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
add al, -117 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
setnp al
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 81
setnb al
adc si, bx
adc cx, dx
add cl, al
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
