.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
add al, 98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
lea ecx, qword ptr [rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno esi, edi
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
cmovl edi, ebx
add bl, 106 # instrumentation
cmovs eax, esi
lea edi, qword ptr [rbx + rdi + 43315]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], -30
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
lea rcx, qword ptr [rdi + rdx + 42602]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
