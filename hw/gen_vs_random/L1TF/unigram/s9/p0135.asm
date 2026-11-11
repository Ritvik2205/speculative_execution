.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
xor sil, bl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
xor rdi, -80
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
seto al
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
lea cx, qword ptr [rbx + rbx + 34]
xor cl, cl
sub sil, -99
btc esi, esi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
or rcx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
