.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
sub dil, -32
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
movsx eax, al
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 33
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rbx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -94 # instrumentation
or al, dl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 81
sub ecx, 62
sbb dl, 127
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 12
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
adc al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
