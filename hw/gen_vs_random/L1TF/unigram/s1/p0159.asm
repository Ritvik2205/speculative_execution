.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 45
movzx rcx, cx
imul dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
cmp dil, al
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rbx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
xchg al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
