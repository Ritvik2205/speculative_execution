.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 127
bswap rcx
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], esi
setnbe dil
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
add al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 87
add bl, -92 # instrumentation
setnz cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
sub rsi, 59
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
