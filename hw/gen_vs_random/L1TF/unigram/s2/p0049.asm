.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, 80
cmovb edi, eax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
test ecx, 28
add al, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
or al, -87
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 31
mov cl, cl
cmovno edi, edi
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
