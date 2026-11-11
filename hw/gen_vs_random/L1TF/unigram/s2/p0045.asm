.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rsi]
movzx edi, bx
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 42
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
xor dl, -82
cmovno si, si
add al, -9 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rsi]
or ax, 31571
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
cmovnp rax, rax
btr ebx, edx
add bl, 15 # instrumentation
cmovb ebx, ebx
not al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
cmovb edx, eax
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
