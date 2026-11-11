.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rsi + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
sub dil, dl
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 83
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rsi]
seto sil
jmp .bb_0.1
.bb_0.1:
test ecx, 85
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
lea rdi, qword ptr [rbx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
or rdx, -22
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
inc esi
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
