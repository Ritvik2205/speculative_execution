.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
lea bx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
add dl, dl
cmovnl di, di
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
add bl, 15 # instrumentation
cmovb ecx, ecx
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
setnp bl
xor sil, sil
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
add al, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
sbb cl, -123
add rbx, 6
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
cmovnp rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
