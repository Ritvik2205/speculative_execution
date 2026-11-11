.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx dx, al
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
mov sil, sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 65
add rcx, 29
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 112 # instrumentation
setnbe dil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
imul bl
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
mov rdi, 13
bt rcx, 78
cmovno edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
