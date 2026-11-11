.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx esi, al
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
imul al
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
lea rbx, qword ptr [rax + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
lea esi, qword ptr [rbx + rbx]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 68
add bl, -23 # instrumentation
setnle sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
