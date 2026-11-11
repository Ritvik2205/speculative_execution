.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs rsi, rdx
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
add dl, -86 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
add bl, bl
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rcx + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
cmovnbe si, cx
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 25
cmovz edx, eax
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
