.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdx]
or sil, -78
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 79
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
cmovnp si, si
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
cmovl rcx, rcx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
cmovnb ax, di
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], esi
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and cx, -8
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
btr ax, 193
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
