.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], bx
or al, -78
btr rbx, 93
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
xor dil, 81
jmp .bb_0.1
.bb_0.1:
xor al, 34
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
cmovns rcx, rsi
cmovnbe rax, rdi
cmovl edx, ebx
and bl, 108 # instrumentation
cmovns rsi, rsi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and cx, di
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and cl, -111
cmovp di, si
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
bts rsi, 205
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
