.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rax, ax
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 30
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 109
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 75
dec dl
and rbx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rbx]
sbb sil, dil
sub edi, edi
lea eax, qword ptr [rbx + rdx + 62]
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
