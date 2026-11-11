.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 69
add cl, -26 # instrumentation
cmovnp di, bx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
inc cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 92
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 91
cmp ecx, ebx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
lea ax, qword ptr [rsi + rdi + 8]
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
cmovle rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
