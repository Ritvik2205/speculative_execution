.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 65 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
sub rdx, 42
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 98
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
lea edi, qword ptr [rbx]
sub ax, 19828
setnbe cl
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 24
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 84
and rdi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdi]
bt rsi, rdi
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
