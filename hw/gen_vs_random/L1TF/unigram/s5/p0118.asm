.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
cwde
cmovnbe si, cx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
add cl, -93 # instrumentation
cmovb rax, rcx
cmovnle di, di
cmovp esi, edi
add cl, -34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 99
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 70
lea si, qword ptr [rdx + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
