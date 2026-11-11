.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21177
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
adc bl, -14
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
imul rax, rdi, 69
add al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
btr ax, di
btr di, dx
test edi, 37
adc sil, 98
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
