.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
and cl, -26 # instrumentation
cmovnp rax, rcx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
btc dx, 38
or bx, 35
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
cmovb esi, edx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 2
cmovnz ecx, edx
cmovle rdi, rdx
or si, 0b1000000000000000 # instrumentation
bsr cx, si
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 41
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
and cl, -115 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
xor al, dl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
