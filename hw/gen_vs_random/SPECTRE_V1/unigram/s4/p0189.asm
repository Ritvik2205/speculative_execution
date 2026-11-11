.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95
lea rcx, qword ptr [rdx + rdi + 71]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rdi
add al, 24 # instrumentation
lea rax, qword ptr [rax]
sub sil, dil
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
sub cl, dl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -76 # instrumentation
adc al, 62
imul si, si
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
xchg bl, dl
movzx di, bl
imul eax, eax, 44
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
