.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 70
bt edi, 254
and cl, 95 # instrumentation
cmovns rdi, rdi
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
bts rdi, 55
not cx
xor edx, 53
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
xor rcx, 98
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
or ax, 6575
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
