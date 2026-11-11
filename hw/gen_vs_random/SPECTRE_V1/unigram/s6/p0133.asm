.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
sbb edi, 16
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
sub bl, -6
or al, sil
and rcx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1716718453
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rcx]
sub cl, al
or bx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
