.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ecx
add al, -36 # instrumentation
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
cmovz edi, eax
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi]
inc rcx
cmovnl ax, di
adc al, 80
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
cmp bl, 123
xor bl, sil
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 51
movsx esi, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
