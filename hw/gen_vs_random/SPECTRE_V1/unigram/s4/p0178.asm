.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, rbx
test dl, al
add al, -125 # instrumentation
cmovb esi, ebx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 23
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
sub edx, 27
lea ax, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], bl
and sil, 56
and rcx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
