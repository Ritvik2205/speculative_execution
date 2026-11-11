.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
add bl, 79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
sbb rax, 803312930
cmp bl, dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
movsx edi, sil
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -76
sub si, 83
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
