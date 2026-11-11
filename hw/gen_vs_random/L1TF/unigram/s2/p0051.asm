.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi + rdi + 8878]
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
movsx ecx, cl
cmovb ax, dx
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
test esi, 32
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 63
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
or rdx, -98
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 29
adc cl, al
sub bl, dl
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
