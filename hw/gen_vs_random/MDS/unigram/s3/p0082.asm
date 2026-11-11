.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
cmovbe esi, edi
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
bts edi, edx
cmovnz rcx, rbx
xor cl, al
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test rcx, rdx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 39
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
or ecx, 54
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and sil, dl
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
cmovb rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
