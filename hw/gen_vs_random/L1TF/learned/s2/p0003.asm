.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov dil, sil
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rdx
dec rdx
cmovns rsi, rbx
lea edi, qword ptr [rax + rdi]
cmovnl di, dx
bt esi, 21
jmp .bb_0.1
.bb_0.1:
xor dl, cl
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
test eax, 1939511779
or rcx, -10
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rax
cmovb edx, eax
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
cmovns ax, ax
add bl, bl
and al, -111
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
