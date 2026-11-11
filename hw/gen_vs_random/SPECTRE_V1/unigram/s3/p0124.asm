.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
cmp ebx, ecx
or sil, al
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
add al, -94 # instrumentation
cmovnle rcx, rax
xor esi, ecx
seto al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
sub rax, rax
js .bb_0.1
jmp .exit_0
.bb_0.1:
imul rbx
lea rbx, qword ptr [rsi]
and eax, 933895314
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 49
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
