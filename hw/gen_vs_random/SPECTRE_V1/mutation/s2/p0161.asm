.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
cmp bl, dl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -94 # instrumentation
or bl, al
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
and al, bl
adc cl, -81
xor rbx, 50
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
sub al, -89
xor al, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
