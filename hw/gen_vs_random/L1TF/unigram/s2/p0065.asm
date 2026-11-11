.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, 113
movsx edx, dl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 70
add al, 66 # instrumentation
cmovnp esi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 52
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
movsx rcx, cx
inc rbx
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
cmovb edx, edx
xor sil, 64
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
cmp bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
