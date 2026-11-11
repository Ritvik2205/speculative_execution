.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
cmp bl, dl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
lea ecx, qword ptr [rax]
lea rcx, qword ptr [rdi]
test dl, -7
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
lea edi, qword ptr [rdx + rdi + 48234]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
sub rdi, rax
jmp .bb_0.2
.bb_0.2:
lea edi, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -107
cmp ax, 7046
lea dx, qword ptr [rcx + rbx + 54281]
bt ecx, eax
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], -16
neg rdx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
