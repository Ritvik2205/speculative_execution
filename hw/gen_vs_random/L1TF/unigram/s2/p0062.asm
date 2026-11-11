.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cx, 46
cmovnp rax, rax
and eax, ebx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
inc ebx
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], -123
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 49
setno al
mul sil
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
test eax, edi
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and bl, bl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
