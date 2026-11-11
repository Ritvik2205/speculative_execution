.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 91 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
btr rax, 56
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and di, cx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 33
and rax, 498847670
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
or ax, -20176
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
cmovnp rdx, rcx
cmovle rcx, rcx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdi
or dil, dil
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
xor esi, ebx
or al, dl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
