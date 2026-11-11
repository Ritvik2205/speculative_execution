.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -68
test al, 34
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
or si, 0b1000000000000000 # instrumentation
bsf bx, si
cmovbe esi, eax
movsx rdx, si
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
cmp dl, dil
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 90
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
add dl, 95 # instrumentation
cmovnb rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
