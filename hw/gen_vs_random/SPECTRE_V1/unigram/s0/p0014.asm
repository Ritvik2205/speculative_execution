.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -170871715
add cl, 0 # instrumentation
adc dl, dil
add dl, 47
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
add dil, bl
add cl, -119 # instrumentation
adc al, dl
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
cmp rax, -72548874
cmp cl, al
cmovb eax, edi
inc rdi
lea eax, qword ptr [rbx]
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
