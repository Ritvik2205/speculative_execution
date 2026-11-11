.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnp sil
mul rcx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 55
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 97
xor dl, dl
add cl, 112 # instrumentation
movzx ecx, dl
cmovb ebx, esi
dec dl
and rax, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rax]
movzx dx, cl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
