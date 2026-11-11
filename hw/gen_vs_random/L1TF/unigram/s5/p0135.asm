.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnl bl
lea esi, qword ptr [rdx + rcx]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 77
and bl, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
cmp dil, 32
lea ax, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rdi + rax + 17]
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
cmovnp cx, si
imul si, di
add cl, -41 # instrumentation
adc cx, dx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
add sil, -61
mov dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
