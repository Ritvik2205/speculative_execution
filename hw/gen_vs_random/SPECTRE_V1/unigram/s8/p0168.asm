.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp sil, 25
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 18
add dil, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
add al, 10
neg rbx
sub cl, dl
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
