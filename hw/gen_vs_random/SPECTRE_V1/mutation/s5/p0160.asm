.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, dl
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
add al, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
sub rdi, rax
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
lea edi, qword ptr [rdx + rdi + 48234]
lea rcx, qword ptr [rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
lea ecx, qword ptr [rax]
test dl, 113
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
