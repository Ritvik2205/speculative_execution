.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz edx, ebx
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
add dl, -121 # instrumentation
cmovnp esi, edx
setl bl
and rdi, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
add bl, 13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
adc cl, cl
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
sub bl, cl
movzx edx, cl
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
lea rdi, qword ptr [rcx]
xor ax, -27503
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
