.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
cmovp si, dx
mov eax, ebx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 46
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], -13
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], -19
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 70
add cx, 9
setb sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], si
adc rbx, 14
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
movzx rdi, di
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
