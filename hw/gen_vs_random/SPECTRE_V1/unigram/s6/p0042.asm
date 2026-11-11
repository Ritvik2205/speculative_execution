.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 34
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rcx
add al, 19 # instrumentation
setnz dil
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
imul dl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], ax
cmp dl, al
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
cmp bl, al
btr eax, 55
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
and cx, 36
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
add bl, 16 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
