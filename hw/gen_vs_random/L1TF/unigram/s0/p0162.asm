.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rsi + rsi + 46]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
xchg ecx, ebx
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rbx
adc rcx, 52
sub sil, -99
test cx, ax
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
cmovle ebx, eax
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
