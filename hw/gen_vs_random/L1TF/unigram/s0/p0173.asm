.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 63
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
add ecx, esi
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
neg si
test al, dil
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 60
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
movzx cx, sil
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
add al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
add bl, cl
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
lea rbx, qword ptr [rdi + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
