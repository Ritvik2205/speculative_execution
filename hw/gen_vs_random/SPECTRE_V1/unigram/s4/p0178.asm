.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 42
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
lea esi, qword ptr [rcx + rdi]
cdq
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
cmp edi, 56
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 97
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
lea bx, qword ptr [rax + rdi + 70]
and bl, al
sets dl
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
