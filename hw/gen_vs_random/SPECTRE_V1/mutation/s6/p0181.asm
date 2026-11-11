.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
cmp bl, dl
add al, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
lea ecx, qword ptr [rax]
test dl, -105
sub rdi, rax
lea edi, qword ptr [rdx + rdi + 48234]
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
lea rcx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
