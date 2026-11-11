.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rsi]
xor al, dl
add bl, 48 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 70
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 42
cmovnb rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
sub dl, 41
add dl, -108 # instrumentation
cmovnle ecx, ecx
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
and rdx, 88
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
