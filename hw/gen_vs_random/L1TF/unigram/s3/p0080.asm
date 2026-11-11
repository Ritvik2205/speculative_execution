.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, 66
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and al, dl
lea rax, qword ptr [rcx]
cmp cl, -71
jmp .bb_0.1
.bb_0.1:
add bl, 15 # instrumentation
cmovb eax, eax
test bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
adc al, dl
add cl, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
lea dx, qword ptr [rcx]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
cmp cx, 65
inc bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
