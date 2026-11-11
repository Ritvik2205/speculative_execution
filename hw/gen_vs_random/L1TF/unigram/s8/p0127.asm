.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
add dl, 125
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
cmovnz rcx, rbx
imul dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
add al, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
setb cl
cmovns rsi, rsi
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
mov rbx, rcx
add al, 87 # instrumentation
cmovo rax, rbx
mov sil, sil
cmp dil, dl
add al, 31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
