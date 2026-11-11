.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edi, 57
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
add bl, -22 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdi]
add sil, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
add al, 109 # instrumentation
adc dx, 62
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
test rdx, rax
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 58
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
lea ebx, qword ptr [rdx + rdi]
lea ebx, qword ptr [rcx + rbx + 56]
mov dil, dil
cmovnb rsi, rcx
not edi
lea edx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
