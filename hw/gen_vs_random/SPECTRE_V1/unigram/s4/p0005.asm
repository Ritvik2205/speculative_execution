.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
add cl, sil
setnl dl
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
setnle cl
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
xor edi, 48
add al, -125 # instrumentation
cmovb ebx, edx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 65
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
add dl, al
mov cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
