.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -263404965
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
setle bl
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
add dl, -121 # instrumentation
cmovnp eax, ebx
jmp .bb_0.1
.bb_0.1:
bt esi, 16
movzx ax, bl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 50
btr edx, ecx
not al
add bl, -3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
xchg bx, di
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
add cl, -38 # instrumentation
setbe dil
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
