.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rsi, 53
add dl, dl
lea di, qword ptr [rdi + rax]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 33
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rsi]
test rbx, 4
adc bl, dl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 43
cmovz rcx, rdx
jmp .bb_0.1
.bb_0.1:
not sil
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
