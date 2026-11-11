.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dil
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
jmp .bb_0.1
.bb_0.1:
mov sil, al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
movzx eax, si
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
add bl, -93
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rax
setnbe al
inc dil
and esi, 59
add bl, 81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
