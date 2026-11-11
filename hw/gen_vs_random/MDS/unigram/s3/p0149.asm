.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 5
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
and sil, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
cmovnp edi, eax
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
cmovb rax, rcx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 42
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
or esi, 14
cmovbe bx, bx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 34
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
