.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -56 # instrumentation
cmovs rbx, rdi
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 354197880
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
inc bl
cmovo rdi, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
mov sil, 82
xor rcx, rbx
btc edx, edx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
btc ax, si
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 16
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
