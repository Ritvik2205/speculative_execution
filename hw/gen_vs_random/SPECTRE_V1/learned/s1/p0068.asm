.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
lea ecx, qword ptr [rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
cmovno esi, edi
lea rcx, qword ptr [rdi + rdx + 42602]
btr rbx, 132
and rcx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 79
bts rbx, 140
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], -30
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
bt ax, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
