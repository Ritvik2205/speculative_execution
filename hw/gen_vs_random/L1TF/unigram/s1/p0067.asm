.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, rax
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 45
sets dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
add cl, -97 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdx]
lea rbx, qword ptr [rbx + rdx]
sub ecx, 69
test dl, 84
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
add al, -95 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
