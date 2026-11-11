.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
not bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
cmovb cx, di
or cl, dl
btc di, cx
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
cmovnp rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and dx, 60
and ebx, 75
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 86
cmovnz rdx, rax
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
