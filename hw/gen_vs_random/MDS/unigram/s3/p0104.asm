.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 84
and dl, -26 # instrumentation
cmovnp rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovz ax, di
bt eax, eax
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
test cl, dil
test dl, 25
or rcx, rax
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rax
and ax, -22368
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
or al, bl
and dl, 84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
xor eax, eax
and dl, cl
cmovb rcx, rdi
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
or si, 0b1000000000000000 # instrumentation
bsr si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
