.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rsi + rax + 39]
dec ecx
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
cmovno eax, ecx
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
lea rcx, qword ptr [rsi + rdx + 20]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, sil
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
xor sil, 1
neg rsi
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
add dil, 40 # instrumentation
lea di, qword ptr [rcx + rcx]
mov dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
