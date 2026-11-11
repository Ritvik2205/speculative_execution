.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 14
bts rcx, rbx
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
add cl, -26 # instrumentation
cmovnp si, cx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
movzx si, cl
lea rbx, qword ptr [rdx + rbx + 69]
add bl, 112 # instrumentation
setnbe dl
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
adc sil, al
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
