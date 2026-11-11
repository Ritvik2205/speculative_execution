.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
xchg al, sil
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
mul al
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
xor eax, -1721938664
movsx bx, sil
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 51
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
setz dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
