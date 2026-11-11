.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
add cl, 12 # instrumentation
lea rdx, qword ptr [rsi + rcx]
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
sub eax, eax
sub dl, cl
xor dl, 9
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovnle rdx, rsi
cmovs ecx, edx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx], 59
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 6
or cl, dl
imul ax, si, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
