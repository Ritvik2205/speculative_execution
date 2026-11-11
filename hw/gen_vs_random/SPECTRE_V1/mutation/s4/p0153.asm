.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
lea ecx, qword ptr [rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
cmovl edi, ebx
cmovno esi, edi
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
lea rcx, qword ptr [rdi + rdx + 42602]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
add bl, 106 # instrumentation
cmovs eax, esi
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], -30
lea edi, qword ptr [rbx + rdi + 43315]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
